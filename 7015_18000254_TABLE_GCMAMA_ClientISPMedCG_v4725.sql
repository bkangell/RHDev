---################################################################# [GCMAMA].[ClientISPMedCG] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISPMedCG]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[MedName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrescriberName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrescriberPhone] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SymptomsExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISPKey] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISPMedCG] ADD CONSTRAINT [PK_ClientISPMedCG] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
