---################################################################# [GCMAMA].[[ClientISPCPTCG]] scripting #################################################################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'GCMAMA')
	BEGIN
		EXEC ('CREATE SCHEMA [GCMAMA] AUTHORIZATION [dbo]')
	END

CREATE TABLE [GCMAMA].[ClientISP_GCMA]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ClientKey] [int] NULL,
[EnrollmentKey] [int] NULL,
[PacketKey] [int] NULL,
[ISPKey] [int] NOT NULL,
[CPTMtgDate] [datetime] NULL,
[CPTNextMtgDate] [datetime] NULL,
[ICPSentDate] [datetime] NULL,
[CareCoordDDKey] [int] NULL,
[FamilyPlannerDDKey] [int] NULL,
[RiskMngmtDate] [datetime] NULL,
[MedCGYNKey] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SupportsCGYNKey] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroundRulesExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CANsCGYNKey] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NeedsExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CPT_CGYNKey] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FamilyVisionExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TeamMissionExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StrengthNeedsExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CultureNeedExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransitionExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccomplishmentsExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BarriersExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GoalProgressExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationOfNxtCPTExp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientName] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientDOB] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [GCMAMA].[ClientISP_GCMA] ADD CONSTRAINT [PK_ClientISP_GCMA] PRIMARY KEY NONCLUSTERED  ([ID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
