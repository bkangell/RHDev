----#################### Start table generate output for : GCMAMA.ClientISPCPTCG (69af5a) ####################
SET NOCOUNT ON;
DECLARE @sqlCmd_69af5a nvarchar(max);
DECLARE @exTranCount_69af5a int;
DECLARE @paramsXml_69af5a xml, @exErrorNumber_69af5a int, @exErrorLine_69af5a int, @exErrorSeverity_69af5a int, @exErrorState_69af5a int, @exErrorMessage_69af5a nvarchar(max);
SET @exTranCount_69af5a = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_69af5a = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_69af5a;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'ClientISPCPTCG' AND [schema_id] = SCHEMA_ID( N'GCMAMA' ) )
    BEGIN
        CREATE TABLE [GCMAMA].[ClientISPCPTCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [ClientKey] int NULL;
        GOTO lb69af5a_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb69af5a_ac2;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [ClientKey] int NULL;
lb69af5a_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [EnrollmentKey] int NULL;
        GOTO lb69af5a_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb69af5a_ac3;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [EnrollmentKey] int NULL;
lb69af5a_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [PacketKey] int NULL;
        GOTO lb69af5a_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb69af5a_ac4;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [PacketKey] int NULL;
lb69af5a_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'MemberName' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [MemberName] varchar(100) NULL;
        GOTO lb69af5a_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'MemberName') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MemberName on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac7;
    END
 
    IF( ( 100 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'MemberName') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'MemberName') ) )
    BEGIN
        RAISERROR( N'The extant column MemberName on table GCMAMA.ClientISPCPTCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac7;
    END
 
    IF( (  100 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'MemberName') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'MemberName') ) )
    BEGIN
        GOTO lb69af5a_ac7;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [MemberName] varchar(100) NULL;
lb69af5a_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'RoleDesc' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [RoleDesc] varchar(50) NULL;
        GOTO lb69af5a_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'RoleDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RoleDesc on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac8;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'RoleDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'RoleDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RoleDesc on table GCMAMA.ClientISPCPTCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac8;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'RoleDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'RoleDesc') ) )
    BEGIN
        GOTO lb69af5a_ac8;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [RoleDesc] varchar(50) NULL;
lb69af5a_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'StrengthsExp' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [StrengthsExp] text NULL;
        GOTO lb69af5a_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'StrengthsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column StrengthsExp on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac9;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'StrengthsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'StrengthsExp') ) )
    BEGIN
        GOTO lb69af5a_ac9;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [StrengthsExp] text NULL;
lb69af5a_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'JoinDate' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [JoinDate] datetime NULL;
        GOTO lb69af5a_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'JoinDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column JoinDate on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac10;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'JoinDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'JoinDate') ) )
    BEGIN
        GOTO lb69af5a_ac10;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [JoinDate] datetime NULL;
lb69af5a_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'LeaveDesc' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [LeaveDesc] varchar(100) NULL;
        GOTO lb69af5a_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'LeaveDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column LeaveDesc on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac11;
    END
 
    IF( ( 100 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'LeaveDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'LeaveDesc') ) )
    BEGIN
        RAISERROR( N'The extant column LeaveDesc on table GCMAMA.ClientISPCPTCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac11;
    END
 
    IF( (  100 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'LeaveDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'LeaveDesc') ) )
    BEGIN
        GOTO lb69af5a_ac11;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [LeaveDesc] varchar(100) NULL;
lb69af5a_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ISPKey' )
    BEGIN
        ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD [ISPKey] int NULL;
        GOTO lb69af5a_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ISPKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ISPKey on table GCMAMA.ClientISPCPTCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb69af5a_ac12;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ISPKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'GCMAMA.ClientISPCPTCG', N'U' ) AND [name] = N'ISPKey') ) )
    BEGIN
        GOTO lb69af5a_ac12;
    END
 
    ALTER TABLE [GCMAMA].[ClientISPCPTCG] ALTER COLUMN [ISPKey] int NULL;
lb69af5a_ac12:
    DECLARE @KeyName_69af5a nvarchar(max), @Clustering_69af5a nvarchar(max);
    SELECT @KeyName_69af5a = [kc].[name], @Clustering_69af5a = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[GCMAMA].[ClientISPCPTCG]', N'U' );
    IF ( ( @KeyName_69af5a IS NULL AND @Clustering_69af5a IS NULL )
      OR ( @KeyName_69af5a <> N'PK_ClientISPCPTCG' )
      OR ( @Clustering_69af5a <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_69af5a, N'' ) <> N'PK_ClientISPCPTCG' )
          OR ( COALESCE( @Clustering_69af5a, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_69af5a = N'ALTER TABLE [GCMAMA].[ClientISPCPTCG] DROP CONSTRAINT [' + @KeyName_69af5a + N'];'
            EXEC [sp_executesql] @sqlCmd_69af5a;
        END
 
        ALTER TABLE [GCMAMA].[ClientISPCPTCG]
        ADD CONSTRAINT [PK_ClientISPCPTCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_69af5a:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_69af5a = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_69af5a int;
    SELECT  @exXactState_69af5a = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_69af5a = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_69af5a = 1 AND @exTranCount_69af5a = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_69af5a = 1 AND @exTranCount_69af5a > 0
        ROLLBACK TRANSACTION ScriptTableStruct_69af5a;
 
    SELECT 
        @exErrorMessage_69af5a  = ERROR_MESSAGE()
       ,@exErrorLine_69af5a     = ERROR_LINE()
       ,@exErrorNumber_69af5a   = ERROR_NUMBER()
       ,@exErrorSeverity_69af5a = ERROR_SEVERITY()
       ,@exErrorState_69af5a    = ERROR_STATE()
       ,@paramsXml_69af5a = (SELECT
            'STRUCTURE SCRIPT FOR [GCMAMA].[ClientISPCPTCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [dbo].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_69af5a
       ,@ErrorLine     = @exErrorLine_69af5a
       ,@ErrorNumber   = @exErrorNumber_69af5a
       ,@ErrorSeverity = @exErrorSeverity_69af5a
       ,@ErrorState    = @exErrorState_69af5a
       ,@Params        = @paramsXml_69af5a;
    RAISERROR( N'Process [GCMAMA].[ClientISPCPTCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_69af5a, @exErrorMessage_69af5a);
END CATCH
----#################### End Table generate output for : GCMAMA.ClientISPCPTCG (69af5a) ####################
GO
