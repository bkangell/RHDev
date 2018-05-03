----#################### Start table generate output for : GCMAMA.ClientISPTaskGoalCG (954b29) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_954b29 nvarchar(max);
DECLARE @exTranCount_954b29 int;
DECLARE @paramsXml_954b29 xml, @exErrorNumber_954b29 int, @exErrorLine_954b29 int, @exErrorSeverity_954b29 int, @exErrorState_954b29 int, @exErrorMessage_954b29 nvarchar(max);
SET @exTranCount_954b29 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_954b29 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_954b29;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPTaskGoalCG' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPTaskGoalCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [ClientKey] int NULL;
        GOTO lb954b29_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb954b29_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [ClientKey] int NULL;
lb954b29_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [EnrollmentKey] int NULL;
        GOTO lb954b29_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb954b29_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [EnrollmentKey] int NULL;
lb954b29_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [PacketKey] int NULL;
        GOTO lb954b29_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb954b29_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [PacketKey] int NULL;
lb954b29_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [TaskDate] datetime NULL;
        GOTO lb954b29_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column TaskDate on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac7;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskDate') ) )
    BEGIN
        GOTO lb954b29_ac7;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [TaskDate] datetime NULL;
lb954b29_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [TaskExp] text NULL;
        GOTO lb954b29_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column TaskExp on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac8;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskExp') ) )
    BEGIN
        GOTO lb954b29_ac8;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [TaskExp] text NULL;
lb954b29_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskStartDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [TaskStartDate] datetime NULL;
        GOTO lb954b29_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskStartDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column TaskStartDate on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac9;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskStartDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'TaskStartDate') ) )
    BEGIN
        GOTO lb954b29_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [TaskStartDate] datetime NULL;
lb954b29_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletionDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [CompletionDate] datetime NULL;
        GOTO lb954b29_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletionDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column CompletionDate on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac10;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletionDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletionDate') ) )
    BEGIN
        GOTO lb954b29_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [CompletionDate] datetime NULL;
lb954b29_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletedDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [CompletedDate] datetime NULL;
        GOTO lb954b29_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletedDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column CompletedDate on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac11;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletedDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'CompletedDate') ) )
    BEGIN
        GOTO lb954b29_ac11;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [CompletedDate] datetime NULL;
lb954b29_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [ISPKey] int NULL;
        GOTO lb954b29_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac12;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb954b29_ac12;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [ISPKey] int NULL;
lb954b29_ac12:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPDetailKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD [ISPDetailKey] int NULL;
        GOTO lb954b29_ac13;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPDetailKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPDetailKey on table GCMAMA.ClientISPTaskGoalCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb954b29_ac13;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPDetailKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPTaskGoalCG', N'U' ) AND [name] = N'ISPDetailKey') ) )
    BEGIN
        GOTO lb954b29_ac13;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ALTER COLUMN [ISPDetailKey] int NULL;
lb954b29_ac13:
    DECLARE @KeyName_954b29 nvarchar(max), @Clustering_954b29 nvarchar(max);
    SELECT @KeyName_954b29 = [kc].[name], @Clustering_954b29 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISPTaskGoalCG]', N'U' );
    IF ( ( @KeyName_954b29 IS NULL AND @Clustering_954b29 IS NULL )
      OR ( @KeyName_954b29 <> N'PK_ClientISPTaskGoalCG' )
      OR ( @Clustering_954b29 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_954b29, N'' ) <> N'PK_ClientISPTaskGoalCG' )
          OR ( COALESCE( @Clustering_954b29, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_954b29 = N'ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] DROP CONSTRAINT [' + @KeyName_954b29 + N'];'
            EXEC [sp_executesql] @sqlCmd_954b29;
        END
 
        ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG]
        ADD CONSTRAINT [PK_ClientISPTaskGoalCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_954b29:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_954b29 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_954b29 int;
    SELECT  @exXactState_954b29 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_954b29 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_954b29 = 1 AND @exTranCount_954b29 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_954b29 = 1 AND @exTranCount_954b29 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_954b29;
 
    SELECT 
        @exErrorMessage_954b29  = ERROR_MESSAGE()
       ,@exErrorLine_954b29     = ERROR_LINE()
       ,@exErrorNumber_954b29   = ERROR_NUMBER()
       ,@exErrorSeverity_954b29 = ERROR_SEVERITY()
       ,@exErrorState_954b29    = ERROR_STATE()
       ,@paramsXml_954b29 = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPTaskGoalCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_954b29
       ,@ErrorLine     = @exErrorLine_954b29
       ,@ErrorNumber   = @exErrorNumber_954b29
       ,@ErrorSeverity = @exErrorSeverity_954b29
       ,@ErrorState    = @exErrorState_954b29
       ,@Params        = @paramsXml_954b29;
    RAISERROR( N'Process [GCMAMA].[ClientISPTaskGoalCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_954b29, @exErrorMessage_954b29);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPTaskGoalCG (954b29) ####################
GO
