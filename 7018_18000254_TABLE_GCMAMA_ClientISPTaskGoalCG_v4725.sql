---################################################################# [GCMAMA].[ClientISPTaskGoalCG] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISPTaskGoalCG]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[TaskDate] [datetime] NULL,
[TaskExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaskStartDate] [datetime] NULL,
[CompletionDate] [datetime] NULL,
[CompletedDate] [datetime] NULL,
[ISPKey] [int] NULL,
[ISPDetailKey] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISPTaskGoalCG] ADD CONSTRAINT [PK_ClientISPTaskGoalCG] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
