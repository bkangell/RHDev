----#################### Start table generate output for : GCMAMA.ClientISP_GCMA (76cdd3) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_76cdd3 nvarchar(max);
DECLARE @exTranCount_76cdd3 int;
DECLARE @paramsXml_76cdd3 xml, @exErrorNumber_76cdd3 int, @exErrorLine_76cdd3 int, @exErrorSeverity_76cdd3 int, @exErrorState_76cdd3 int, @exErrorMessage_76cdd3 nvarchar(max);
SET @exTranCount_76cdd3 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_76cdd3 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_76cdd3;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISP_GCMA' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISP_GCMA] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [ClientKey] int NULL;
        GOTO lb76cdd3_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb76cdd3_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [ClientKey] int NULL;
lb76cdd3_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [EnrollmentKey] int NULL;
        GOTO lb76cdd3_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb76cdd3_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [EnrollmentKey] int NULL;
lb76cdd3_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [PacketKey] int NULL;
        GOTO lb76cdd3_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb76cdd3_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [PacketKey] int NULL;
lb76cdd3_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [ISPKey] int NOT NULL;
        GOTO lb76cdd3_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac9;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ISPKey') )
    AND (    0 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb76cdd3_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [ISPKey] int NOT NULL;
lb76cdd3_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTMtgDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [CPTMtgDate] datetime NULL;
        GOTO lb76cdd3_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTMtgDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column CPTMtgDate on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac10;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTMtgDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTMtgDate') ) )
    BEGIN
        GOTO lb76cdd3_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [CPTMtgDate] datetime NULL;
lb76cdd3_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTNextMtgDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [CPTNextMtgDate] datetime NULL;
        GOTO lb76cdd3_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTNextMtgDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column CPTNextMtgDate on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac11;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTNextMtgDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPTNextMtgDate') ) )
    BEGIN
        GOTO lb76cdd3_ac11;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [CPTNextMtgDate] datetime NULL;
lb76cdd3_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ICPSentDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [ICPSentDate] datetime NULL;
        GOTO lb76cdd3_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ICPSentDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column ICPSentDate on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac12;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ICPSentDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ICPSentDate') ) )
    BEGIN
        GOTO lb76cdd3_ac12;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [ICPSentDate] datetime NULL;
lb76cdd3_ac12:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CareCoordDDKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [CareCoordDDKey] int NULL;
        GOTO lb76cdd3_ac13;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CareCoordDDKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column CareCoordDDKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac13;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CareCoordDDKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CareCoordDDKey') ) )
    BEGIN
        GOTO lb76cdd3_ac13;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [CareCoordDDKey] int NULL;
lb76cdd3_ac13:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyPlannerDDKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [FamilyPlannerDDKey] int NULL;
        GOTO lb76cdd3_ac14;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyPlannerDDKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column FamilyPlannerDDKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac14;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyPlannerDDKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyPlannerDDKey') ) )
    BEGIN
        GOTO lb76cdd3_ac14;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [FamilyPlannerDDKey] int NULL;
lb76cdd3_ac14:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'RiskMngmtDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [RiskMngmtDate] datetime NULL;
        GOTO lb76cdd3_ac15;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'RiskMngmtDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column RiskMngmtDate on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac15;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'RiskMngmtDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'RiskMngmtDate') ) )
    BEGIN
        GOTO lb76cdd3_ac15;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [RiskMngmtDate] datetime NULL;
lb76cdd3_ac15:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'MedCGYNKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [MedCGYNKey] char(1) NULL;
        GOTO lb76cdd3_ac16;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'MedCGYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column MedCGYNKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac16;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'MedCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'MedCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column MedCGYNKey on table GCMAMA.ClientISP_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac16;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'MedCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'MedCGYNKey') ) )
    BEGIN
        GOTO lb76cdd3_ac16;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [MedCGYNKey] char(1) NULL;
lb76cdd3_ac16:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'SupportsCGYNKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [SupportsCGYNKey] char(1) NULL;
        GOTO lb76cdd3_ac17;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'SupportsCGYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column SupportsCGYNKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac17;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'SupportsCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'SupportsCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column SupportsCGYNKey on table GCMAMA.ClientISP_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac17;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'SupportsCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'SupportsCGYNKey') ) )
    BEGIN
        GOTO lb76cdd3_ac17;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [SupportsCGYNKey] char(1) NULL;
lb76cdd3_ac17:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GroundRulesExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [GroundRulesExp] text NULL;
        GOTO lb76cdd3_ac18;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GroundRulesExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column GroundRulesExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac18;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GroundRulesExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GroundRulesExp') ) )
    BEGIN
        GOTO lb76cdd3_ac18;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [GroundRulesExp] text NULL;
lb76cdd3_ac18:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CANsCGYNKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [CANsCGYNKey] char(1) NULL;
        GOTO lb76cdd3_ac19;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CANsCGYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column CANsCGYNKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac19;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CANsCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CANsCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CANsCGYNKey on table GCMAMA.ClientISP_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac19;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CANsCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CANsCGYNKey') ) )
    BEGIN
        GOTO lb76cdd3_ac19;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [CANsCGYNKey] char(1) NULL;
lb76cdd3_ac19:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'NeedsExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [NeedsExp] text NULL;
        GOTO lb76cdd3_ac20;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'NeedsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column NeedsExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac20;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'NeedsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'NeedsExp') ) )
    BEGIN
        GOTO lb76cdd3_ac20;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [NeedsExp] text NULL;
lb76cdd3_ac20:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPT_CGYNKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [CPT_CGYNKey] char(1) NULL;
        GOTO lb76cdd3_ac21;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPT_CGYNKey') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column CPT_CGYNKey on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac21;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPT_CGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPT_CGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column CPT_CGYNKey on table GCMAMA.ClientISP_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac21;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPT_CGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CPT_CGYNKey') ) )
    BEGIN
        GOTO lb76cdd3_ac21;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [CPT_CGYNKey] char(1) NULL;
lb76cdd3_ac21:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyVisionExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [FamilyVisionExp] text NULL;
        GOTO lb76cdd3_ac22;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyVisionExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column FamilyVisionExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac22;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyVisionExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'FamilyVisionExp') ) )
    BEGIN
        GOTO lb76cdd3_ac22;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [FamilyVisionExp] text NULL;
lb76cdd3_ac22:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TeamMissionExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [TeamMissionExp] text NULL;
        GOTO lb76cdd3_ac23;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TeamMissionExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column TeamMissionExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac23;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TeamMissionExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TeamMissionExp') ) )
    BEGIN
        GOTO lb76cdd3_ac23;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [TeamMissionExp] text NULL;
lb76cdd3_ac23:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'StrengthNeedsExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [StrengthNeedsExp] text NULL;
        GOTO lb76cdd3_ac24;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'StrengthNeedsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column StrengthNeedsExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac24;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'StrengthNeedsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'StrengthNeedsExp') ) )
    BEGIN
        GOTO lb76cdd3_ac24;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [StrengthNeedsExp] text NULL;
lb76cdd3_ac24:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CultureNeedExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [CultureNeedExp] text NULL;
        GOTO lb76cdd3_ac25;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CultureNeedExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column CultureNeedExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac25;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CultureNeedExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'CultureNeedExp') ) )
    BEGIN
        GOTO lb76cdd3_ac25;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [CultureNeedExp] text NULL;
lb76cdd3_ac25:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TransitionExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [TransitionExp] text NULL;
        GOTO lb76cdd3_ac26;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TransitionExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column TransitionExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac26;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TransitionExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'TransitionExp') ) )
    BEGIN
        GOTO lb76cdd3_ac26;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [TransitionExp] text NULL;
lb76cdd3_ac26:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'AccomplishmentsExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [AccomplishmentsExp] text NULL;
        GOTO lb76cdd3_ac27;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'AccomplishmentsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AccomplishmentsExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac27;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'AccomplishmentsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'AccomplishmentsExp') ) )
    BEGIN
        GOTO lb76cdd3_ac27;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [AccomplishmentsExp] text NULL;
lb76cdd3_ac27:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'BarriersExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [BarriersExp] text NULL;
        GOTO lb76cdd3_ac28;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'BarriersExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column BarriersExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac28;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'BarriersExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'BarriersExp') ) )
    BEGIN
        GOTO lb76cdd3_ac28;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [BarriersExp] text NULL;
lb76cdd3_ac28:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GoalProgressExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [GoalProgressExp] text NULL;
        GOTO lb76cdd3_ac29;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GoalProgressExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column GoalProgressExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac29;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GoalProgressExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'GoalProgressExp') ) )
    BEGIN
        GOTO lb76cdd3_ac29;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [GoalProgressExp] text NULL;
lb76cdd3_ac29:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'LocationOfNxtCPTExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [LocationOfNxtCPTExp] text NULL;
        GOTO lb76cdd3_ac30;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'LocationOfNxtCPTExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column LocationOfNxtCPTExp on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac30;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'LocationOfNxtCPTExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'LocationOfNxtCPTExp') ) )
    BEGIN
        GOTO lb76cdd3_ac30;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [LocationOfNxtCPTExp] text NULL;
lb76cdd3_ac30:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientName' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [ClientName] char(100) NULL;
        GOTO lb76cdd3_ac31;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientName') NOT IN ( 175 /* char */) )
    BEGIN
        RAISERROR( N'The extant column ClientName on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac31;
    END
 
    IF( ( 100 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientName') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientName') ) )
    BEGIN
        RAISERROR( N'The extant column ClientName on table GCMAMA.ClientISP_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac31;
    END
 
    IF( (  100 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientName') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientName') ) )
    BEGIN
        GOTO lb76cdd3_ac31;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [ClientName] char(100) NULL;
lb76cdd3_ac31:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientDOB' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD [ClientDOB] datetime NULL;
        GOTO lb76cdd3_ac32;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientDOB') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column ClientDOB on table GCMAMA.ClientISP_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76cdd3_ac32;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientDOB') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISP_GCMA', N'U' ) AND [name] = N'ClientDOB') ) )
    BEGIN
        GOTO lb76cdd3_ac32;
    END
 
    ALTER TABLE [GCMAMA].[ClientISP_GCMA] ALTER COLUMN [ClientDOB] datetime NULL;
lb76cdd3_ac32:
    DECLARE @KeyName_76cdd3 nvarchar(max), @Clustering_76cdd3 nvarchar(max);
    SELECT @KeyName_76cdd3 = [kc].[name], @Clustering_76cdd3 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISP_GCMA]', N'U' );
    IF ( ( @KeyName_76cdd3 IS NULL AND @Clustering_76cdd3 IS NULL )
      OR ( @KeyName_76cdd3 <> N'PK_ClientISP_GCMA' )
      OR ( @Clustering_76cdd3 <> N'NONCLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_76cdd3, N'' ) <> N'PK_ClientISP_GCMA' )
          OR ( COALESCE( @Clustering_76cdd3, N'' ) <> N'NONCLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_76cdd3 = N'ALTER TABLE [GCMAMA].[ClientISP_GCMA] DROP CONSTRAINT [' + @KeyName_76cdd3 + N'];'
            EXEC [sp_executesql] @sqlCmd_76cdd3;
        END
 
        ALTER TABLE [GCMAMA].[ClientISP_GCMA]
        ADD CONSTRAINT [PK_ClientISP_GCMA]
        PRIMARY KEY NONCLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_76cdd3:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_76cdd3 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_76cdd3 int;
    SELECT  @exXactState_76cdd3 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_76cdd3 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_76cdd3 = 1 AND @exTranCount_76cdd3 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_76cdd3 = 1 AND @exTranCount_76cdd3 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_76cdd3;
 
    SELECT 
        @exErrorMessage_76cdd3  = ERROR_MESSAGE()
       ,@exErrorLine_76cdd3     = ERROR_LINE()
       ,@exErrorNumber_76cdd3   = ERROR_NUMBER()
       ,@exErrorSeverity_76cdd3 = ERROR_SEVERITY()
       ,@exErrorState_76cdd3    = ERROR_STATE()
       ,@paramsXml_76cdd3 = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISP_GCMA]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_76cdd3
       ,@ErrorLine     = @exErrorLine_76cdd3
       ,@ErrorNumber   = @exErrorNumber_76cdd3
       ,@ErrorSeverity = @exErrorSeverity_76cdd3
       ,@ErrorState    = @exErrorState_76cdd3
       ,@Params        = @paramsXml_76cdd3;
    RAISERROR( N'Process [GCMAMA].[ClientISP_GCMA] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_76cdd3, @exErrorMessage_76cdd3);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISP_GCMA (76cdd3) ####################
GO
