/* The script is created for the ticket #SF6909 to Update [dbo]. Client */
DECLARE @currDateTime          VARCHAR(30);
DECLARE @sqlStr1               VARCHAR(max);
SET NOCOUNT ON;
DECLARE @sqlCmd_4b35f9 nvarchar(max);
DECLARE @exTranCount_4b35f9 int;
DECLARE @paramsXml_4b35f9 xml, @exErrorNumber_4b35f9 int, @exErrorLine_4b35f9 int, @exErrorSeverity_4b35f9 int, @exErrorState_4b35f9 int, @exErrorMessage_4b35f9 nvarchar(max);
SET @exTranCount_4b35f9 = @@TRANCOUNT;
select  @currDateTime = [dbo].CTSP_Core_DigiShare_GetHL7_DTM (getdate(),'s');
 
/*===========================================================================================================================================================
The following query was used to get the tables with client keys
SELECT DISTINCT
        [s].[name]        AS [SchemaName]
       ,[t].[name]        AS [TableName]
       ,SUM( [p].[Rows] ) AS [Rows]
       ,CONVERT( bit, 0 ) AS [HasIDCol]
    FROM [sys].[tables] AS [t]
    INNER JOIN [sys].[schemas] AS [s]
        ON [t].[schema_id] = [s].[schema_id]
       AND [t].[type] = N'U'
       AND [t].[is_ms_shipped] = 0
       AND [t].[name] NOT IN ( N'VoFundHistoryImport', N'ClientMasterCurrentData' )
       AND [t].[name] NOT LIKE N'aaa%'
       AND [t].[name] NOT LIKE N'zzz%'
	   AND [t].[name] NOT LIKE N'FFCollaboratorDataReturned%'
	   AND [t].[name] <> 'SADxGuardMaintenanceLog'  --Adding the table to the exclusion list CS-137 2018/07/09 RBJ
    INNER JOIN [sys].[columns] AS [c]
        ON [t].[object_id] = [c].[object_id]
       AND [c].[name] IN ( N'ClientKey' ) -- Only find tables with columns named "ClientKey"
    INNER JOIN [sys].[partitions] AS [p]
        ON [t].[object_id] = [p].[object_id]
       AND [p].[index_id] IN ( 1, 0 )
    WHERE [s].[name] IN ( N'dbo' ) -- Restrict to the 'dbo' schema for now.
    GROUP BY [s].[name], [t].[name]
    HAVING SUM( [p].[rows] ) > 0
    ORDER BY SUM( [p].[Rows] ) DESC;

----------------------------------------------------------------------------------------*/
IF EXISTS (SELECT 1 FROM [dbo].[ProviderMaster] WHERE [CLMTRKNetworkId]='VBHCKS')
BEGIN
    DECLARE @errorMsg NVARCHAR(MAX),
                    @errorLine int;
    BEGIN TRANSACTION [tr1]
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; 


/*  backup of tables */

	SELECT * INTO   [bak].SF6909_TRPLog	FROM [dbo].	TRPLog WHERE CientKey=92496 and id in
					 (select ID from TRPLog t inner join ClientPacket p on p.ID=t.PacketKey
						  where t.ClientKey=92496 and EnrollmentKey=688108 )
	SELECT * INTO   [bak].SF6909_ClientAccessLog	FROM [dbo].	ClientAccessLog	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientPacket	FROM [dbo].	ClientPacket	 WHERE CientKey=92496 and ClientEnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientICD	FROM [dbo].	ClientICD	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientPacketForms	FROM [dbo].	ClientPacketForms	 WHERE CientKey=92496 and ClientEnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientPacketCommonDx2015MigrationHistory	FROM [dbo].	ClientPacketCommonDx2015MigrationHistory	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_PNChartQuestionResponseMaster	FROM [dbo].	PNChartQuestionResponseMaster	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientProgressNote	FROM [dbo].	ClientProgressNote	 WHERE CientKey=92496 and ClientEnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_Alerts	FROM [dbo].	Alerts	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_SignedForms	FROM [dbo].	SignedForms	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ReleaseOfInformationToCategories	FROM [dbo].	ReleaseOfInformationToCategories	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientPacketCommon	FROM [dbo].	ClientPacketCommon	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_MailMasterAttachments	FROM [dbo].	MailMasterAttachments	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientStatus	FROM [dbo].	ClientStatus	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ReleaseOfInformationFromCategories	FROM [dbo].	ReleaseOfInformationFromCategories	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientISP	FROM [dbo].	ClientISP	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_MMScripts	FROM [dbo].	MMScripts	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientCurrentData	FROM [dbo].	ClientCurrentData	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_AppointmentHistory	FROM [dbo].	AppointmentHistory	 WHERE CientKey=92496 --and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ProgNoteValeoNew	FROM [dbo].	ProgNoteValeoNew	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_Appointments	FROM [dbo].	Appointments	 WHERE CientKey=92496 and AppointmentDate>'2018-09-01'
	SELECT * INTO   [bak].SF6909_Claims	FROM [dbo].	Claims	 WHERE CientKey=92496 and ServiceStartDate>'2018-09-01'
	SELECT * INTO   [bak].SF6909_ClientProgram	FROM [dbo].	ClientProgram	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientContacts	FROM [dbo].	ClientContacts	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientProgramReferral	FROM [dbo].	ClientProgramReferral	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientProgramMain	FROM [dbo].	ClientProgramMain	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientAddresses	FROM [dbo].	ClientAddresses	 WHERE CientKey=92496 and TransactionDate>'2018-09-01'
	SELECT * INTO   [bak].SF6909_Referral	FROM [dbo].	Referral	 WHERE CientKey=92496 and DateOfReferral>'2018-09-01'
	SELECT * INTO   [bak].SF6909_ClientEnrollment	FROM [dbo].	ClientEnrollment	 WHERE CientKey=92496 and ID=688108 
	SELECT * INTO   [bak].SF6909_SMMHCInventoryLog	FROM [dbo].	SMMHCInventoryLog	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ScoreTrakClientTargetMaster	FROM [dbo].	ScoreTrakClientTargetMaster	 WHERE CientKey=92496 and CreateDateTime>'2018-09-01'
	SELECT * INTO   [bak].SF6909_ClientStatusKids	FROM [dbo].	ClientStatusKids	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_Closure	FROM [dbo].	Closure	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_DiagnosisUpdate [dbo].	FROM [dbo].	DiagnosisUpdate [dbo].	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_PNChartMaster	FROM [dbo].	PNChartMaster	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientComms	FROM [dbo].	ClientComms	 WHERE CientKey=92496 
	SELECT * INTO   [bak].SF6909_ValeoInHouseCSCRef	FROM [dbo].	ValeoInHouseCSCRef	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ClientPacketFormSignature	FROM [dbo].	ClientPacketFormSignature	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ProgNoteValeoCrisis	FROM [dbo].	ProgNoteValeoCrisis	 WHERE CientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909_ValeoMasterPSRef	FROM [dbo].	ValeoMasterPSRef	 WHERE CientKey=92496 and EnrollmentKey=688108 

	/* ----------------------------------------------Update [dbo]. REPLACE ClientKey 92496 with 100000 */
	Update [dbo].	TRPLog	SET ClientKey=100000 WHERE CientKey=92496 and id in 
		(select ID from TRPLog t inner join ClientPacket p on p.ID=t.PacketKey
			where t.ClientKey=92496 and EnrollmentKey=688108)
	Update [dbo].ClientAccessLog	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacket	SET ClientKey=100000 WHERE CientKey=92496 and ClientEnrollmentKey=688108 
	Update [dbo].ClientICD	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacketForms	SET ClientKey=100000 WHERE CientKey=92496 and ClientEnrollmentKey=688108 
	Update [dbo].ClientPacketCommonDx2015MigrationHistory	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].PNChartQuestionResponseMaster	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientProgressNote	SET ClientKey=100000 WHERE CientKey=92496 and ClientEnrollmentKey=688108 
	Update [dbo].Alerts	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].SignedForms	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ReleaseOfInformationToCategories	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacketCommon	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].MailMasterAttachments	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientStatus	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ReleaseOfInformationFromCategories	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientISP	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].MMScripts	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientCurrentData	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].AppointmentHistory	SET ClientKey=100000 WHERE CientKey=92496 --and EnrollmentKey=688108 
	Update [dbo].ProgNoteValeoNew	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].Appointments	SET ClientKey=100000 WHERE CientKey=92496 and AppointmentDate>'2018-09-01'
	Update [dbo].Claims	SET ClientKey=100000 WHERE CientKey=92496 and ServiceStartDate>'2018-09-01'
	Update [dbo].ClientProgram	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientContacts	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientProgramReferral	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientProgramMain	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientAddresses	SET ClientKey=100000 WHERE CientKey=92496 and TransactionDate>'2018-09-01'
	Update [dbo].Referral	SET ClientKey=100000 WHERE CientKey=92496 and DateOfReferral>'2018-09-01'
	Update [dbo].ClientEnrollment	SET ClientKey=100000 WHERE CientKey=92496 and ID=688108 
	Update [dbo].SMMHCInventoryLog	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ScoreTrakClientTargetMaster	SET ClientKey=100000 WHERE CientKey=92496 and CreateDateTime>'2018-09-01'
	Update [dbo].ClientStatusKids	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].Closure	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].DiagnosisUpdate [dbo].	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].PNChartMaster	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientComms	SET ClientKey=100000 WHERE CientKey=92496 
	Update [dbo].ValeoInHouseCSCRef	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacketFormSignature	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ProgNoteValeoCrisis	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ValeoMasterPSRef	SET ClientKey=100000 WHERE CientKey=92496 and EnrollmentKey=688108 

	COMMIT TRANSACTION [tr1];      
		  SET TRANSACTION ISOLATION LEVEL READ COMMITTED;                
	END TRY
	BEGIN CATCH
        SELECT @errorMsg=ERROR_MESSAGE(),
        @errorLine=ERROR_LINE()
 
        PRINT N'Unable to Update [dbo]. Client key. The error '''+ @errorMsg + ''' occured at line:'+ CAST(@errorLine as VARCHAR(50));
 
    END CATCH
END
ELSE
BEGIN
        PRINT N'An attempt has been made to run this script for non VBHCKS agency. Please run this script only for VBHCKS agency';
END
