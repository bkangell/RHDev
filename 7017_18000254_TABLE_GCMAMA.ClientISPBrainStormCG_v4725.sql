----#################### Start table generate output for : GCMAMA.ClientISPBrainStormCG (5afadb) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_5afadb nvarchar(max);
DECLARE @exTranCount_5afadb int;
DECLARE @paramsXml_5afadb xml, @exErrorNumber_5afadb int, @exErrorLine_5afadb int, @exErrorSeverity_5afadb int, @exErrorState_5afadb int, @exErrorMessage_5afadb nvarchar(max);
SET @exTranCount_5afadb = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_5afadb = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_5afadb;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPBrainStormCG' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPBrainStormCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [ClientKey] int NULL;
        GOTO lb5afadb_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb5afadb_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [ClientKey] int NULL;
lb5afadb_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [EnrollmentKey] int NULL;
        GOTO lb5afadb_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb5afadb_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [EnrollmentKey] int NULL;
lb5afadb_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [PacketKey] int NULL;
        GOTO lb5afadb_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb5afadb_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [PacketKey] int NULL;
lb5afadb_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'BrainStormDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [BrainStormDate] datetime NULL;
        GOTO lb5afadb_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'BrainStormDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column BrainStormDate on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac9;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'BrainStormDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'BrainStormDate') ) )
    BEGIN
        GOTO lb5afadb_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [BrainStormDate] datetime NULL;
lb5afadb_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'OptionExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [OptionExp] text NULL;
        GOTO lb5afadb_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'OptionExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column OptionExp on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac10;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'OptionExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'OptionExp') ) )
    BEGIN
        GOTO lb5afadb_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [OptionExp] text NULL;
lb5afadb_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PotentialOptionExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [PotentialOptionExp] text NULL;
        GOTO lb5afadb_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PotentialOptionExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column PotentialOptionExp on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac11;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PotentialOptionExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'PotentialOptionExp') ) )
    BEGIN
        GOTO lb5afadb_ac11;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [PotentialOptionExp] text NULL;
lb5afadb_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [ISPKey] int NULL;
        GOTO lb5afadb_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac12;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb5afadb_ac12;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [ISPKey] int NULL;
lb5afadb_ac12:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPDetailKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD [ISPDetailKey] int NULL;
        GOTO lb5afadb_ac13;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPDetailKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPDetailKey on table GCMAMA.ClientISPBrainStormCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5afadb_ac13;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPDetailKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPBrainStormCG', N'U' ) AND [name] = N'ISPDetailKey') ) )
    BEGIN
        GOTO lb5afadb_ac13;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ALTER COLUMN [ISPDetailKey] int NULL;
lb5afadb_ac13:
    DECLARE @KeyName_5afadb nvarchar(max), @Clustering_5afadb nvarchar(max);
    SELECT @KeyName_5afadb = [kc].[name], @Clustering_5afadb = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISPBrainStormCG]', N'U' );
    IF ( ( @KeyName_5afadb IS NULL AND @Clustering_5afadb IS NULL )
      OR ( @KeyName_5afadb <> N'PK_ClientISPBrainStormCG' )
      OR ( @Clustering_5afadb <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_5afadb, N'' ) <> N'PK_ClientISPBrainStormCG' )
          OR ( COALESCE( @Clustering_5afadb, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_5afadb = N'ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] DROP CONSTRAINT [' + @KeyName_5afadb + N'];'
            EXEC [sp_executesql] @sqlCmd_5afadb;
        END
 
        ALTER TABLE [GCMAMA].[ClientISPBrainStormCG]
        ADD CONSTRAINT [PK_ClientISPBrainStormCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_5afadb:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_5afadb = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_5afadb int;
    SELECT  @exXactState_5afadb = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_5afadb = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_5afadb = 1 AND @exTranCount_5afadb = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_5afadb = 1 AND @exTranCount_5afadb > 0
        ROLLBACK TRANSACTION ScriptTableStruct_5afadb;
 
    SELECT 
        @exErrorMessage_5afadb  = ERROR_MESSAGE()
       ,@exErrorLine_5afadb     = ERROR_LINE()
       ,@exErrorNumber_5afadb   = ERROR_NUMBER()
       ,@exErrorSeverity_5afadb = ERROR_SEVERITY()
       ,@exErrorState_5afadb    = ERROR_STATE()
       ,@paramsXml_5afadb = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPBrainStormCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_5afadb
       ,@ErrorLine     = @exErrorLine_5afadb
       ,@ErrorNumber   = @exErrorNumber_5afadb
       ,@ErrorSeverity = @exErrorSeverity_5afadb
       ,@ErrorState    = @exErrorState_5afadb
       ,@Params        = @paramsXml_5afadb;
    RAISERROR( N'Process [GCMAMA].[ClientISPBrainStormCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_5afadb, @exErrorMessage_5afadb);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPBrainStormCG (5afadb) ####################
GO
