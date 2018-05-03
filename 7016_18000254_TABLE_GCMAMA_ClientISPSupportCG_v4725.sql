---################################################################# [GCMAMA].[ClientISPSupportCG] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISPSupportCG]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[IdDate] [datetime] NULL,
[SupportName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RelationsDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FreqDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISPKey] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISPSupportCG] ADD CONSTRAINT [PK_ClientISPSupportCG] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
