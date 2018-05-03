---################################################################# [GCMAMA].[ClientISPDetail_GCMA] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISPDetail_GCMA]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISPKey] [int] NULL,
[ISPDetailKey] [int] NULL,
[ProgressDate] [datetime] NULL,
[ProgressGoalExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BrainStormCGYNKey] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaskGoalCGYNKey] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
