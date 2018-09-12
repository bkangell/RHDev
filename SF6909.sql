/* The script is created for the ticket #SF6909ba20180912 to Update [dbo]. Client */
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

	SELECT * INTO   [bak].SF6909ba20180912_TRPLog	FROM [dbo].	TRPLog WHERE ClientKey=92496 and id in
					 (select ID from TRPLog t inner join ClientPacket p on p.ID=t.PacketKey
						  where t.ClientKey=92496 and EnrollmentKey=688108 )
	SELECT * INTO   [bak].SF6909ba20180912_ClientAccessLog	FROM [dbo].	ClientAccessLog	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientPacket	FROM [dbo].	ClientPacket	 WHERE ClientKey=92496 and ClientEnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientICD	FROM [dbo].	ClientICD	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientPacketForms	FROM [dbo].	ClientPacketForms	 WHERE ClientKey=92496 and ClientEnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientPacketCommonDx2015MigrationHistory	FROM [dbo].	ClientPacketCommonDx2015MigrationHistory	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_PNChartQuestionResponseMaster	FROM [dbo].	PNChartQuestionResponseMaster	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientProgressNote	FROM [dbo].	ClientProgressNote	 WHERE ClientKey=92496 and ClientEnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_Alerts	FROM [dbo].	Alerts	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_SignedForms	FROM [dbo].	SignedForms	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ReleaseOfInformationToCategories	FROM [dbo].	ReleaseOfInformationToCategories	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientPacketCommon	FROM [dbo].	ClientPacketCommon	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_MailMasterAttachments	FROM [dbo].	MailMasterAttachments	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientStatus	FROM [dbo].	ClientStatus	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ReleaseOfInformationFromCategories	FROM [dbo].	ReleaseOfInformationFromCategories	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientISP	FROM [dbo].	ClientISP	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_MMScripts	FROM [dbo].	MMScripts	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientCurrentData	FROM [dbo].	ClientCurrentData	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_AppointmentHistory	FROM [dbo].	AppointmentHistory	 WHERE ClientKey=92496 --and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ProgNoteValeoNew	FROM [dbo].	ProgNoteValeoNew	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_Appointments	FROM [dbo].	Appointments	 WHERE ClientKey=92496 and AppointmentDate>'2018-09-01'
	SELECT * INTO   [bak].SF6909ba20180912_Claims	FROM [dbo].	Claims	 WHERE ClientKey=92496 and ServiceStartDate>'2018-09-01'
	SELECT * INTO   [bak].SF6909ba20180912_ClientProgram	FROM [dbo].	ClientProgram	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientContacts	FROM [dbo].	ClientContacts	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientProgramReferral	FROM [dbo].	ClientProgramReferral	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientProgramMain	FROM [dbo].	ClientProgramMain	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientAddresses	FROM [dbo].	ClientAddresses	 WHERE ClientKey=92496 and TransactionDate>'2018-09-01'
	SELECT * INTO   [bak].SF6909ba20180912_Referral	FROM [dbo].	Referral	 WHERE ClientKey=92496 and DateOfReferral>'2018-09-01'
	SELECT * INTO   [bak].SF6909ba20180912_ClientEnrollment	FROM [dbo].	ClientEnrollment	 WHERE ClientKey=92496 and ID=688108 
	SELECT * INTO   [bak].SF6909ba20180912_SMMHCInventoryLog	FROM [dbo].	SMMHCInventoryLog	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ScoreTrakClientTargetMaster	FROM [dbo].	ScoreTrakClientTargetMaster	 WHERE ClientKey=92496 and CreateDateTime>'2018-09-01'
	SELECT * INTO   [bak].SF6909ba20180912_ClientStatusKids	FROM [dbo].	ClientStatusKids	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_Closure	FROM [dbo].	Closure	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_DiagnosisUpdate FROM [dbo].DiagnosisUpdate  WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_PNChartMaster	FROM [dbo].	PNChartMaster	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientComms	FROM [dbo].	ClientComms	 WHERE ClientKey=92496 
	SELECT * INTO   [bak].SF6909ba20180912_ValeoInHouseCSCRef	FROM [dbo].	ValeoInHouseCSCRef	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ClientPacketFormSignature	FROM [dbo].	ClientPacketFormSignature	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ProgNoteValeoCrisis	FROM [dbo].	ProgNoteValeoCrisis	 WHERE ClientKey=92496 and EnrollmentKey=688108 
	SELECT * INTO   [bak].SF6909ba20180912_ValeoMasterPSRef	FROM [dbo].	ValeoMasterPSRef	 WHERE ClientKey=92496 and EnrollmentKey=688108 

	/* ----------------------------------------------Update [dbo]. REPLACE ClientKey 92496 with 100000 */
	Update [dbo].TRPLog	SET ClientKey=100000 WHERE ClientKey=92496 and id in 
		(select ID from TRPLog t inner join ClientPacket p on p.ID=t.PacketKey
			where t.ClientKey=92496 and ClientEnrollmentKey=688108)
	Update [dbo].ClientAccessLog	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacket	SET ClientKey=100000 WHERE ClientKey=92496 and ClientEnrollmentKey=688108 
	Update [dbo].ClientICD	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacketForms	SET ClientKey=100000 WHERE ClientKey=92496 and ClientEnrollmentKey=688108 
	Update [dbo].ClientPacketCommonDx2015MigrationHistory	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].PNChartQuestionResponseMaster	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientProgressNote	SET ClientKey=100000 WHERE ClientKey=92496 and ClientEnrollment=688108 
	Update [dbo].Alerts	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].SignedForms	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ReleaseOfInformationToCategories	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacketCommon	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].MailMasterAttachments	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientStatus	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ReleaseOfInformationFromCategories	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientISP	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].MMScripts	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientCurrentData	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].AppointmentHistory	SET ClientKey=100000 WHERE ClientKey=92496 and AppointmentDate>'2018-09-01'
	Update [dbo].ProgNoteValeoNew	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].Appointments	SET ClientKey=100000 WHERE ClientKey=92496 and AppointmentDate>'2018-09-01'
	Update [dbo].Claims	SET ClientKey=100000 WHERE ClientKey=92496 and ServiceStartDate>'2018-09-01'
	Update [dbo].ClientProgram	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientContacts	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientProgramReferral	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientProgramMain	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientAddresses	SET ClientKey=100000 WHERE ClientKey=92496 and TransactionDate>'2018-09-01'
	Update [dbo].Referral	SET ClientKey=100000 WHERE ClientKey=92496 and DateOfReferral>'2018-09-01'
	Update [dbo].ClientEnrollment	SET ClientKey=100000 WHERE ClientKey=92496 and ID=688108 
	Update [dbo].SMMHCInventoryLog	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ScoreTrakClientTargetMaster	SET ClientKey=100000 WHERE ClientKey=92496 and CreateDateTime>'2018-09-01'
	Update [dbo].ClientStatusKids	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].Closure	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].DiagnosisUpdate SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].PNChartMaster	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientComms	SET ClientKey=100000 WHERE ClientKey=92496 
	Update [dbo].ValeoInHouseCSCRef	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ClientPacketFormSignature	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ProgNoteValeoCrisis	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 
	Update [dbo].ValeoMasterPSRef	SET ClientKey=100000 WHERE ClientKey=92496 and EnrollmentKey=688108 

	EXEC CTSP_Core_Utility_RebuildClientCurrentDataByClient 92496

        EXEC CTSP_Core_Utility_RebuildClientCurrentDataByClient 100000

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
