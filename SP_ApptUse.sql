/***********************************************************************************************************************

	PURPOSE: 
		Purpose of this stored proc is to retrieve appointment information to determine appointment reminder usage
		This procedure will store a row in ClaimTrakTempFiles.dbo.Z'+@ServerName+'AgencyAlertTbl

	INPUT:
		@StartDate 

	CALLS:  exec SP_ApptUse @StartDate='01/01/2017'

	MODIFIED: 
		1) 2018/04/07 BA - Initial Creation

***********************************************************************************************************************/


ALTER PROCEDURE SP_ApptUse 

	@StartDate	datetime  
AS
BEGIN
--debug
--DECLARE @StartDate	datetime

--SELECT @StartDate = DATEADD(yy,-1,GETDATE()) -- Calculate @StartDate as last year, i.e. current date - 1 year
	if (@StartDate is NULL)
		SELECT @StartDate = DATEADD(year,-1,GETDATE()); -- Calculate @StartDate as last year, i.e. current date - 1 year

	DECLARE @AgencyName			varchar(50)
		, @ApptShowVal		int
		, @ApptNoShowVal	int
		, @ApptCancelVal	int
		, @PNShowVal		int
		, @PNNoShowVal		int
		, @PNCancelVal		int
		, @ScheduledCnt		int
		, @MissedCnt		int
		, @CanceledCnt		int
		
		, @SqlString        varchar(8000)
		, @SqlInsertString  varchar(8000)
		, @SqlTestString	varchar(8000)
		, @ServerName	    varchar(300)
		, @AgencyAlertTbl   varchar(200)	;

	SELECT @ServerName		 = convert(nvarchar(128), serverproperty('servername'))
	SELECT @AgencyName		 = (SELECT Provider_Name FROM ProviderMaster);
	SELECT @ApptShowVal		 = 1;--Show
	SELECT @ApptNoShowVal	 = 2;--No Show)	
	SELECT @ApptCancelVal	 = 3;--Cancel)
	
	SELECT @PNShowVal	 = (SELECT ProgressNoteShowKey FROM [dbo].[ScheduleBillCode] WHERE BillCodeDescription='Show')	;
	SELECT @PNNoShowVal	 = (SELECT TOP 1 ProgressNoteShowKey FROM [dbo].[ScheduleBillCode] 
								WHERE BillCodeDescription like 'No Show%' ORDER BY ID)	;
	SELECT @PNCancelVal	 = (SELECT TOP 1 ProgressNoteShowKey FROM [dbo].[ScheduleBillCode] 
							WHERE BillCodeDescription like '%Cancel%' ORDER BY ID )	;
	PRINT 'Show='+convert(varchar,@PNShowVal)+' NoShow='+Convert(varchar,@PNNoShowVal)+' Cancel='+Convert(varchar,@PNCancelVal);

	Set @AgencyAlertTbl='ClaimTrakTempFiles.dbo.ZAgencyAlertTbl'
print '@AgencyAlerTbl= '+@AgencyAlertTbl


	CREATE TABLE #ProvApptList(
		AgencyName		varchar(50)
		, ScheduledCnt  int NULL
		, CompletedCnt	int NULL
		, MissedCnt		int NULL
		, CanceledCnt	int NULL
		, CnclL24HrsCnt	int NULL
		, CnclL48HrsCnt	int NULL
		, CnclL72HrsCnt	int NULL
		, CnclG72HrsCnt	int NULL
		, CnclPct		float NULL
		, MissedPct		float NULL
		, ServerName	varchar(100)
		, QueryDate		datetime
		, StartDate		datetime
		);

	SELECT @ScheduledCnt = 
		(SELECT count(*) --Appointment Scheduled 
			FROM [dbo].[Appointments] a
			WHERE a.AppointmentDate>@StartDate and a.AppointmentDate <= GETDATE())	;				

	SELECT @MissedCnt = 
		(SELECT count(*) --No Show
			FROM [dbo].[Appointments] a  
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE a.AppointmentDate>@StartDate and a.AppointmentDate <= GETDATE() 
			AND a.ShowNoShow=@ApptNoShowVal 
			OR (a.ShowNoShow is NULL AND p.NoShow=@PNNoShowVal) )  ;
PRINT 'Missed='+convert(varchar,@MissedCnt) + ' @ApptNoShowVal='+convert(varchar,@ApptNoShowVal)

	SELECT @CanceledCnt = 
		(SELECT count(*) --as Canceled,
			FROM [dbo].[Appointments] a  
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE a.AppointmentDate>@StartDate and a.AppointmentDate <= GETDATE() 
			AND a.ShowNoShow=3 --@ApptCancelVal 
			OR (a.ShowNoShow is NULL AND p.NoShow=@PNCancelVal) )  ;


	INSERT INTO #ProvApptList (
		AgencyName	
		, ScheduledCnt	-- Appointments Scheduled
		, CompletedCnt	-- Appointments Completed
		, MissedCnt		-- Appointments Missed, i.e. No Show
		, CanceledCnt	-- Appointments Canceled (Total)
		, CnclL24HrsCnt	-- Appointments Canceled < 24 hrs
		, CnclL48HrsCnt	-- Appointments Canceled < 48 hrs
		, CnclL72HrsCnt	-- Appointments Canceled < 72 hrs
		, CnclG72HrsCnt	-- Appointments Canceled > 72 hrs
		, CnclPct		-- Percent of appointments Canceled
		, MissedPct		-- Percent of appointments Missed
		, ServerName
		, QueryDate	
		, StartDate
		)

	SELECT @AgencyName 
	  , @ScheduledCnt
	  -- Appointments Completed
	  , (SELECT count(*)
			FROM [dbo].[Appointments] a 
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE (a.AppointmentDate>@StartDate and a.AppointmentDate <= GETDATE() )
			AND (a.ShowNoShow=1 --@ApptShowVal 
			OR (a.ShowNoShow is NULL AND p.NoShow=@PNShowVal)  )  )   --Show,

	  -- Appointments Missed, i.e. No Show
	  , @MissedCnt
	  -- CANCELED APPOINTMENTS
	  -- Canceled < 24 hrs
	  , @CanceledCnt
	  -- Appointments Canceled < 24 hrs
	  , (SELECT count(*)
			FROM [dbo].[Appointments] a  
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE (DateDiff(DAY,a.AppointmentDate,a.CreateDate)=1)  
			AND (a.ShowNoShow=@ApptCancelVal OR (a.ShowNoShow is NULL AND p.NoShow=@PNCancelVal) ))  --as L24hrs,
	 -- Appointments Canceled < 48 hrs
	  , (SELECT count(*)
			FROM [dbo].[Appointments] a  
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE (DateDiff(DAY,a.AppointmentDate,a.CreateDate)=2)
			AND (a.ShowNoShow=@ApptCancelVal OR (a.ShowNoShow is NULL AND p.NoShow=@PNCancelVal) ))  --as L48hrs,
	   -- Appointments Canceled < 72 hrs
	   , (SELECT count(*)
			FROM [dbo].[Appointments] a  
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE (DateDiff(DAY,a.AppointmentDate,a.CreateDate)=3)
			AND (a.ShowNoShow=@ApptCancelVal OR (a.ShowNoShow is NULL AND p.NoShow=@PNCancelVal) ))  --as L72hrs,

	  , (SELECT count(*)
			FROM [dbo].[Appointments] a  
			JOIN ClientProgressNote p ON p.AppointmentKey=a.ID 
			WHERE (DateDiff(DAY,a.AppointmentDate,a.CreateDate)>3)
			AND (a.ShowNoShow=@ApptCancelVal OR (a.ShowNoShow is NULL AND p.NoShow=@PNCancelVal) ))  --as m72hrs
	 , CASE WHEN @ScheduledCnt>0 THEN 
			@CanceledCnt/@ScheduledCnt * 100 -- Appointments Canceled %
		ELSE
			0		
		END as CnclPct
	  , CASE WHEN @ScheduledCnt>0 THEN 
			@MissedCnt/@ScheduledCnt * 100	-- Appointments Missed %
		ELSE
			0		
		END as MissedPct

	  , @ServerName
	  , GETDATE()
	  , @StartDate;

/*	  
	  SET @SqlInsertString='SELECT * FROM '+@AgencyAlertTbl;
	  EXECUTE(@SqlInsertString);
	  print '@SqlInsertString: ' +@SQLInsertString */

	  --IF ((select object_id('ClaimtrakTempFiles.dbo.ZAngecyAlertTbl')) = NULL)
	  declare @chktbl	int;
	  select @chktbl=(select object_id(@AgencyAlertTbl)) --'ClaimtrakTempFiles.dbo.ZAgencyAlertTbl'))
	  IF @chktbl is null
	  
	  BEGIN
	------------------------ Create  Table  -----------------------
		set @SqlString=
			'CREATE TABLE ' + @AgencyAlertTbl + 
			' (	AgencyName		varchar(50)
				, ScheduledCnt  int NULL
				, CompletedCnt	int NULL
				, MissedCnt		int NULL
				, CanceledCnt	int NULL
				, CnclL24HrsCnt	int NULL
				, CnclL48HrsCnt	int NULL
				, CnclL72HrsCnt	int NULL
				, CnclG72HrsCnt	int NULL
				, CnclPct		float NULL
				, MissedPct		float NULL
				, Servername	varchar(100)
				, QueryDate		datetime
				, StartDate		datetime
				)';

		EXECUTE (@SqlString);
		PRINT '@SqlString: '+@SqlString
	
	END
	
	SET @SqlInsertString = 'INSERT INTO ' + @AgencyAlertTbl +
			'(	AgencyName	
				, ScheduledCnt	-- Appointments Scheduled
				, CompletedCnt	-- Appointments Completed
				, MissedCnt		-- Appointments Missed, i.e. No Show
				, CanceledCnt	-- Appointments Canceled (Total)
				, CnclL24HrsCnt	-- Appointments Canceled < 24 hrs
				, CnclL48HrsCnt	-- Appointments Canceled < 48 hrs
				, CnclL72HrsCnt	-- Appointments Canceled < 72 hrs
				, CnclG72HrsCnt	-- Appointments Canceled > 72 hrs
				, CnclPct		-- Percent of appointments Canceled
				, MissedPct		-- Percent of appointments Missed
				, ServerName
				, QueryDate	
				, StartDate
				)
			 SELECT * FROM #ProvApptList';
		EXECUTE (@SqlInsertString);
		print @SqlInsertString;
	
		select * from #ProvApptList;
 END