----#################### Start table generate output for : GCMAMA.ClientISPCANsCG (76f50f) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_76f50f nvarchar(max);
DECLARE @exTranCount_76f50f int;
DECLARE @paramsXml_76f50f xml, @exErrorNumber_76f50f int, @exErrorLine_76f50f int, @exErrorSeverity_76f50f int, @exErrorState_76f50f int, @exErrorMessage_76f50f nvarchar(max);
SET @exTranCount_76f50f = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_76f50f = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_76f50f;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPCANsCG' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPCANsCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [ClientKey] int NULL;
        GOTO lb76f50f_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb76f50f_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [ClientKey] int NULL;
lb76f50f_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [EnrollmentKey] int NULL;
        GOTO lb76f50f_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb76f50f_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [EnrollmentKey] int NULL;
lb76f50f_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [PacketKey] int NULL;
        GOTO lb76f50f_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb76f50f_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [PacketKey] int NULL;
lb76f50f_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'CANsDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [CANsDate] datetime NULL;
        GOTO lb76f50f_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'CANsDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column CANsDate on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac7;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'CANsDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'CANsDate') ) )
    BEGIN
        GOTO lb76f50f_ac7;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [CANsDate] datetime NULL;
lb76f50f_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'DomainDesc' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [DomainDesc] varchar(50) NULL;
        GOTO lb76f50f_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'DomainDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column DomainDesc on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac8;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'DomainDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'DomainDesc') ) )
    BEGIN
        RAISERROR( N'The extant column DomainDesc on table GCMAMA.ClientISPCANsCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac8;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'DomainDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'DomainDesc') ) )
    BEGIN
        GOTO lb76f50f_ac8;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [DomainDesc] varchar(50) NULL;
lb76f50f_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'NeedExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [NeedExp] text NULL;
        GOTO lb76f50f_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'NeedExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column NeedExp on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac9;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'NeedExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'NeedExp') ) )
    BEGIN
        GOTO lb76f50f_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [NeedExp] text NULL;
lb76f50f_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD [ISPKey] int NULL;
        GOTO lb76f50f_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPCANsCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb76f50f_ac10;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCANsCG', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb76f50f_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCANsCG] ALTER COLUMN [ISPKey] int NULL;
lb76f50f_ac10:
    DECLARE @KeyName_76f50f nvarchar(max), @Clustering_76f50f nvarchar(max);
    SELECT @KeyName_76f50f = [kc].[name], @Clustering_76f50f = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISPCANsCG]', N'U' );
    IF ( ( @KeyName_76f50f IS NULL AND @Clustering_76f50f IS NULL )
      OR ( @KeyName_76f50f <> N'PK_ClientISPCansCG' )
      OR ( @Clustering_76f50f <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_76f50f, N'' ) <> N'PK_ClientISPCansCG' )
          OR ( COALESCE( @Clustering_76f50f, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_76f50f = N'ALTER TABLE [GCMAMA].[ClientISPCANsCG] DROP CONSTRAINT [' + @KeyName_76f50f + N'];'
            EXEC [sp_executesql] @sqlCmd_76f50f;
        END
 
        ALTER TABLE [GCMAMA].[ClientISPCANsCG]
        ADD CONSTRAINT [PK_ClientISPCansCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_76f50f:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_76f50f = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_76f50f int;
    SELECT  @exXactState_76f50f = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_76f50f = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_76f50f = 1 AND @exTranCount_76f50f = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_76f50f = 1 AND @exTranCount_76f50f > 0
        ROLLBACK TRANSACTION ScriptTableStruct_76f50f;
 
    SELECT 
        @exErrorMessage_76f50f  = ERROR_MESSAGE()
       ,@exErrorLine_76f50f     = ERROR_LINE()
       ,@exErrorNumber_76f50f   = ERROR_NUMBER()
       ,@exErrorSeverity_76f50f = ERROR_SEVERITY()
       ,@exErrorState_76f50f    = ERROR_STATE()
       ,@paramsXml_76f50f = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPCANsCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_76f50f
       ,@ErrorLine     = @exErrorLine_76f50f
       ,@ErrorNumber   = @exErrorNumber_76f50f
       ,@ErrorSeverity = @exErrorSeverity_76f50f
       ,@ErrorState    = @exErrorState_76f50f
       ,@Params        = @paramsXml_76f50f;
    RAISERROR( N'Process [GCMAMA].[ClientISPCANsCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_76f50f, @exErrorMessage_76f50f);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPCANsCG (76f50f) ####################
GO
