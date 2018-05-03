----#################### Start table generate output for : GCMAMA.ClientISPMedCG (4d634f) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_4d634f nvarchar(max);
DECLARE @exTranCount_4d634f int;
DECLARE @paramsXml_4d634f xml, @exErrorNumber_4d634f int, @exErrorLine_4d634f int, @exErrorSeverity_4d634f int, @exErrorState_4d634f int, @exErrorMessage_4d634f nvarchar(max);
SET @exTranCount_4d634f = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_4d634f = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_4d634f;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPMedCG' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPMedCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [ClientKey] int NULL;
        GOTO lb4d634f_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb4d634f_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [ClientKey] int NULL;
lb4d634f_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [EnrollmentKey] int NULL;
        GOTO lb4d634f_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb4d634f_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [EnrollmentKey] int NULL;
lb4d634f_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [PacketKey] int NULL;
        GOTO lb4d634f_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb4d634f_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [PacketKey] int NULL;
lb4d634f_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'MedName' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [MedName] varchar(50) NULL;
        GOTO lb4d634f_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'MedName') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MedName on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac5;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'MedName') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'MedName') ) )
    BEGIN
        RAISERROR( N'The extant column MedName on table GCMAMA.ClientISPMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac5;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'MedName') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'MedName') ) )
    BEGIN
        GOTO lb4d634f_ac5;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [MedName] varchar(50) NULL;
lb4d634f_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberName' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [PrescriberName] varchar(100) NULL;
        GOTO lb4d634f_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberName') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PrescriberName on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac6;
    END
 
    IF( ( 100 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberName') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberName') ) )
    BEGIN
        RAISERROR( N'The extant column PrescriberName on table GCMAMA.ClientISPMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac6;
    END
 
    IF( (  100 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberName') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberName') ) )
    BEGIN
        GOTO lb4d634f_ac6;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [PrescriberName] varchar(100) NULL;
lb4d634f_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberPhone' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [PrescriberPhone] varchar(12) NULL;
        GOTO lb4d634f_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberPhone') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PrescriberPhone on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac7;
    END
 
    IF( ( 12 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberPhone') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberPhone') ) )
    BEGIN
        RAISERROR( N'The extant column PrescriberPhone on table GCMAMA.ClientISPMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac7;
    END
 
    IF( (   12 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberPhone') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'PrescriberPhone') ) )
    BEGIN
        GOTO lb4d634f_ac7;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [PrescriberPhone] varchar(12) NULL;
lb4d634f_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'SymptomsExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [SymptomsExp] text NULL;
        GOTO lb4d634f_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'SymptomsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column SymptomsExp on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac8;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'SymptomsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'SymptomsExp') ) )
    BEGIN
        GOTO lb4d634f_ac8;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [SymptomsExp] text NULL;
lb4d634f_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD [ISPKey] int NULL;
        GOTO lb4d634f_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb4d634f_ac9;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPMedCG', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb4d634f_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPMedCG] ALTER COLUMN [ISPKey] int NULL;
lb4d634f_ac9:
    DECLARE @KeyName_4d634f nvarchar(max), @Clustering_4d634f nvarchar(max);
    SELECT @KeyName_4d634f = [kc].[name], @Clustering_4d634f = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISPMedCG]', N'U' );
    IF ( ( @KeyName_4d634f IS NULL AND @Clustering_4d634f IS NULL )
      OR ( @KeyName_4d634f <> N'PK_ClientISPMedCG' )
      OR ( @Clustering_4d634f <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_4d634f, N'' ) <> N'PK_ClientISPMedCG' )
          OR ( COALESCE( @Clustering_4d634f, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_4d634f = N'ALTER TABLE [GCMAMA].[ClientISPMedCG] DROP CONSTRAINT [' + @KeyName_4d634f + N'];'
            EXEC [sp_executesql] @sqlCmd_4d634f;
        END
 
        ALTER TABLE [GCMAMA].[ClientISPMedCG]
        ADD CONSTRAINT [PK_ClientISPMedCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_4d634f:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_4d634f = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_4d634f int;
    SELECT  @exXactState_4d634f = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_4d634f = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_4d634f = 1 AND @exTranCount_4d634f = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_4d634f = 1 AND @exTranCount_4d634f > 0
        ROLLBACK TRANSACTION ScriptTableStruct_4d634f;
 
    SELECT 
        @exErrorMessage_4d634f  = ERROR_MESSAGE()
       ,@exErrorLine_4d634f     = ERROR_LINE()
       ,@exErrorNumber_4d634f   = ERROR_NUMBER()
       ,@exErrorSeverity_4d634f = ERROR_SEVERITY()
       ,@exErrorState_4d634f    = ERROR_STATE()
       ,@paramsXml_4d634f = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPMedCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_4d634f
       ,@ErrorLine     = @exErrorLine_4d634f
       ,@ErrorNumber   = @exErrorNumber_4d634f
       ,@ErrorSeverity = @exErrorSeverity_4d634f
       ,@ErrorState    = @exErrorState_4d634f
       ,@Params        = @paramsXml_4d634f;
    RAISERROR( N'Process [GCMAMA].[ClientISPMedCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_4d634f, @exErrorMessage_4d634f);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPMedCG (4d634f) ####################
GO
