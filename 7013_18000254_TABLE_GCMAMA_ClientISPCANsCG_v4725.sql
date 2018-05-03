---################################################################# [GCMAMA].[ClientISPCANsCG] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END


CREATE TABLE [GCMAMA].[ClientISPCANsCG]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[CANsDate] [datetime] NULL,
[DomainDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NeedExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISPKey] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISPCANsCG] ADD CONSTRAINT [PK_ClientISPCansCG] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
