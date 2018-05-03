---################################################################# [GCMAMA].[ClientISPBrainStormCG] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISPBrainStormCG]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[BrainStormDate] [datetime] NULL,
[OptionExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PotentialOptionExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISPKey] [int] NULL,
[ISPDetailKey] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISPBrainStormCG] ADD CONSTRAINT [PK_ClientISPBrainStormCG] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
