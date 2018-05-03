----#################### Start table generate output for : GCMAMA.ClientISPDetail_GCMA (bb1c1b) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_bb1c1b nvarchar(max);
DECLARE @exTranCount_bb1c1b int;
DECLARE @paramsXml_bb1c1b xml, @exErrorNumber_bb1c1b int, @exErrorLine_bb1c1b int, @exErrorSeverity_bb1c1b int, @exErrorState_bb1c1b int, @exErrorMessage_bb1c1b nvarchar(max);
SET @exTranCount_bb1c1b = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_bb1c1b = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_bb1c1b;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPDetail_GCMA' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPDetail_GCMA] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [ClientKey] int NULL;
        GOTO lbbb1c1b_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [ClientKey] int NULL;
lbbb1c1b_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [EnrollmentKey] int NULL;
        GOTO lbbb1c1b_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [EnrollmentKey] int NULL;
lbbb1c1b_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [PacketKey] nchar(10) NULL;
        GOTO lbbb1c1b_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'PacketKey') NOT IN ( 239 /* nchar */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac4;
    END
 
    IF( ( 20 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'PacketKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPDetail_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac4;
    END
 
    IF( (   20 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [PacketKey] nchar(10) NULL;
lbbb1c1b_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [ISPKey] int NULL;
        GOTO lbbb1c1b_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac5;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac5;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [ISPKey] int NULL;
lbbb1c1b_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPDetailKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [ISPDetailKey] int NULL;
        GOTO lbbb1c1b_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPDetailKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPDetailKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac6;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPDetailKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ISPDetailKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac6;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [ISPDetailKey] int NULL;
lbbb1c1b_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [ProgressDate] datetime NULL;
        GOTO lbbb1c1b_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column ProgressDate on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac7;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressDate') ) )
    BEGIN
        GOTO lbbb1c1b_ac7;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [ProgressDate] datetime NULL;
lbbb1c1b_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressGoalExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [ProgressGoalExp] text NULL;
        GOTO lbbb1c1b_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressGoalExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ProgressGoalExp on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac8;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressGoalExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'ProgressGoalExp') ) )
    BEGIN
        GOTO lbbb1c1b_ac8;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [ProgressGoalExp] text NULL;
lbbb1c1b_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'BrainStormCGYNKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [BrainStormCGYNKey] varchar(1) NULL;
        GOTO lbbb1c1b_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'BrainStormCGYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column BrainStormCGYNKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac9;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'BrainStormCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'BrainStormCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column BrainStormCGYNKey on table GCMAMA.ClientISPDetail_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac9;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'BrainStormCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'BrainStormCGYNKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [BrainStormCGYNKey] varchar(1) NULL;
lbbb1c1b_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'TaskGoalCGYNKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ADD [TaskGoalCGYNKey] varchar(1) NULL;
        GOTO lbbb1c1b_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'TaskGoalCGYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column TaskGoalCGYNKey on table GCMAMA.ClientISPDetail_GCMA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac10;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'TaskGoalCGYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'TaskGoalCGYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column TaskGoalCGYNKey on table GCMAMA.ClientISPDetail_GCMA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lbbb1c1b_ac10;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'TaskGoalCGYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPDetail_GCMA', N'U' ) AND [name] = N'TaskGoalCGYNKey') ) )
    BEGIN
        GOTO lbbb1c1b_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPDetail_GCMA] ALTER COLUMN [TaskGoalCGYNKey] varchar(1) NULL;
lbbb1c1b_ac10:
    --===========================================================================================================================================================
lbQuit_bb1c1b:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_bb1c1b = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_bb1c1b int;
    SELECT  @exXactState_bb1c1b = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_bb1c1b = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_bb1c1b = 1 AND @exTranCount_bb1c1b = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_bb1c1b = 1 AND @exTranCount_bb1c1b > 0
        ROLLBACK TRANSACTION ScriptTableStruct_bb1c1b;
 
    SELECT 
        @exErrorMessage_bb1c1b  = ERROR_MESSAGE()
       ,@exErrorLine_bb1c1b     = ERROR_LINE()
       ,@exErrorNumber_bb1c1b   = ERROR_NUMBER()
       ,@exErrorSeverity_bb1c1b = ERROR_SEVERITY()
       ,@exErrorState_bb1c1b    = ERROR_STATE()
       ,@paramsXml_bb1c1b = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPDetail_GCMA]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_bb1c1b
       ,@ErrorLine     = @exErrorLine_bb1c1b
       ,@ErrorNumber   = @exErrorNumber_bb1c1b
       ,@ErrorSeverity = @exErrorSeverity_bb1c1b
       ,@ErrorState    = @exErrorState_bb1c1b
       ,@Params        = @paramsXml_bb1c1b;
    RAISERROR( N'Process [GCMAMA].[ClientISPDetail_GCMA] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_bb1c1b, @exErrorMessage_bb1c1b);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPDetail_GCMA (bb1c1b) ####################
GO
