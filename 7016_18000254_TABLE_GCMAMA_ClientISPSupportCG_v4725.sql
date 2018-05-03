----#################### Start table generate output for : GCMAMA.ClientISPSupportCG (494fae) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_494fae nvarchar(max);
DECLARE @exTranCount_494fae int;
DECLARE @paramsXml_494fae xml, @exErrorNumber_494fae int, @exErrorLine_494fae int, @exErrorSeverity_494fae int, @exErrorState_494fae int, @exErrorMessage_494fae nvarchar(max);
SET @exTranCount_494fae = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_494fae = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_494fae;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPSupportCG' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPSupportCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [ClientKey] int NULL;
        GOTO lb494fae_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb494fae_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [ClientKey] int NULL;
lb494fae_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [EnrollmentKey] int NULL;
        GOTO lb494fae_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb494fae_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [EnrollmentKey] int NULL;
lb494fae_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [PacketKey] int NULL;
        GOTO lb494fae_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb494fae_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [PacketKey] int NULL;
lb494fae_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'IdDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [IdDate] datetime NULL;
        GOTO lb494fae_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'IdDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column IdDate on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac7;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'IdDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'IdDate') ) )
    BEGIN
        GOTO lb494fae_ac7;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [IdDate] datetime NULL;
lb494fae_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'SupportName' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [SupportName] varchar(50) NULL;
        GOTO lb494fae_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'SupportName') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column SupportName on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac8;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'SupportName') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'SupportName') ) )
    BEGIN
        RAISERROR( N'The extant column SupportName on table GCMAMA.ClientISPSupportCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac8;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'SupportName') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'SupportName') ) )
    BEGIN
        GOTO lb494fae_ac8;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [SupportName] varchar(50) NULL;
lb494fae_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'RelationsDesc' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [RelationsDesc] varchar(50) NULL;
        GOTO lb494fae_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'RelationsDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RelationsDesc on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac9;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'RelationsDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'RelationsDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RelationsDesc on table GCMAMA.ClientISPSupportCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac9;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'RelationsDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'RelationsDesc') ) )
    BEGIN
        GOTO lb494fae_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [RelationsDesc] varchar(50) NULL;
lb494fae_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'FreqDesc' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [FreqDesc] varchar(50) NULL;
        GOTO lb494fae_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'FreqDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column FreqDesc on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac10;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'FreqDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'FreqDesc') ) )
    BEGIN
        RAISERROR( N'The extant column FreqDesc on table GCMAMA.ClientISPSupportCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac10;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'FreqDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'FreqDesc') ) )
    BEGIN
        GOTO lb494fae_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [FreqDesc] varchar(50) NULL;
lb494fae_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD [ISPKey] int NULL;
        GOTO lb494fae_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPSupportCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb494fae_ac11;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPSupportCG', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb494fae_ac11;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPSupportCG] ALTER COLUMN [ISPKey] int NULL;
lb494fae_ac11:
    DECLARE @KeyName_494fae nvarchar(max), @Clustering_494fae nvarchar(max);
    SELECT @KeyName_494fae = [kc].[name], @Clustering_494fae = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISPSupportCG]', N'U' );
    IF ( ( @KeyName_494fae IS NULL AND @Clustering_494fae IS NULL )
      OR ( @KeyName_494fae <> N'PK_ClientISPSupportCG' )
      OR ( @Clustering_494fae <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_494fae, N'' ) <> N'PK_ClientISPSupportCG' )
          OR ( COALESCE( @Clustering_494fae, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_494fae = N'ALTER TABLE [GCMAMA].[ClientISPSupportCG] DROP CONSTRAINT [' + @KeyName_494fae + N'];'
            EXEC [sp_executesql] @sqlCmd_494fae;
        END
 
        ALTER TABLE [GCMAMA].[ClientISPSupportCG]
        ADD CONSTRAINT [PK_ClientISPSupportCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_494fae:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_494fae = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_494fae int;
    SELECT  @exXactState_494fae = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_494fae = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_494fae = 1 AND @exTranCount_494fae = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_494fae = 1 AND @exTranCount_494fae > 0
        ROLLBACK TRANSACTION ScriptTableStruct_494fae;
 
    SELECT 
        @exErrorMessage_494fae  = ERROR_MESSAGE()
       ,@exErrorLine_494fae     = ERROR_LINE()
       ,@exErrorNumber_494fae   = ERROR_NUMBER()
       ,@exErrorSeverity_494fae = ERROR_SEVERITY()
       ,@exErrorState_494fae    = ERROR_STATE()
       ,@paramsXml_494fae = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPSupportCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_494fae
       ,@ErrorLine     = @exErrorLine_494fae
       ,@ErrorNumber   = @exErrorNumber_494fae
       ,@ErrorSeverity = @exErrorSeverity_494fae
       ,@ErrorState    = @exErrorState_494fae
       ,@Params        = @paramsXml_494fae;
    RAISERROR( N'Process [GCMAMA].[ClientISPSupportCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_494fae, @exErrorMessage_494fae);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPSupportCG (494fae) ####################
GO
