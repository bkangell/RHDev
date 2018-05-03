---################################################################# [GCMAMA].[[ClientISPCPTCG]] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISPCPTCG]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[MemberName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoleDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StrengthsExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JoinDate] [datetime] NULL,
[LeaveDesc] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISPKey] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISPCPTCG] ADD CONSTRAINT [PK_ClientISPCPTCG] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
