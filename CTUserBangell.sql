DECLARE @CopyFromCTUserFormsMasterKey	INT;
DECLARE @NewFormDescription				VARCHAR(MAX);
set @CopyFromCTUserFormsMasterKey = 28; -- REPLACE WITH the source master key
-- USE FIND AND REPLACE TO REPLACE SRC_DBASE WITH THE SOURCE DATABASE.  Should be 22 occurrences.
SELECT	@NewFormDescription= (select FormDescription from  SRC_DBASE.dbo.CTUserFormsMaster where ID=@CopyFromCTUserFormsMasterKey)

Create Table #TempControlList (id int identity(1,1), RowTypeKey int, CopyCTUserFormsDetailControlKey int, NewDetailKey int)
Create Table #TempDetailList (id int identity(1,1), RowTypeKey int, CopyCTUserFormsDetailKey int, NewDetailKey int)
Create table #TempCols (id int identity(1,1), TableName varchar(100), ColName varchar(100))

Declare 
		@MinKey int, @MaxKey int, @Key int, @NewKey int,
		@MinKey1 int, @MaxKey1 int, @NewDetailKey int,
		@MinKey2 int, @MaxKey2 int,
		@MinKey3 int, @MaxKey3 int,
		@MinKeyCol int, @MaxKeyCol int, @TableName varchar(100), @ColName varchar(100),
		@NewDetailSubKey int, @NewRateKey int,
		@Detailkey1 int, @Detailkey2 int, @Detailkey3 int, @Detailkey4 int,
		@NewCTUserFormsMasterGUID varchar(36), @NewCTUserFormsDetailGUID varchar(36),
		@OriginalCTUserFormsMasterGUID varchar(36),
		-- Question Master Variables --
		@QMNewID	int,
		@QMQuestion	varchar(max),
		@QMQTypeKey	int,
		@QMDateTypeKey	int,
		@QMStringLength	int,
		@QMStringFormatKey	int,
		@QMRows	int,
		@QMFieldWidth	int,
		@QMComments	varchar(250),
		@QMCTUserFormsCoreFieldKey	int,
		@QMCTUserFormsQuestionMasterGUID	uniqueidentifier,
		@QMCTUserFormsCoreFieldGUID	varchar(36),
		-- Question List Options Variables --
		@OCTUserFormsQuestionMasterKey	int,
		@ODescription		varchar(50),
		@ODisplayOrder	int,
		@OEffectiveDate	datetime,
		@OExpirationDate	datetime,
		@OCTUserFormsQuestionListOptionsGUID	varchar(36),
		@OCTUserFormsQuestionMasterGUID		varchar(36)

declare @SqlString varchar(max)

select * into #t1
	from SRC_DBASE.dbo.CTUserFormsMaster
	where ID =  @CopyFromCTUserFormsMasterKey

INSERT INTO [dbo].[CTUserFormsMaster]
    ([FormDescription]
    ,[EffectiveDate]
    ,[ExpirationDate]
    ,[IsSubForm]
    ,[EntryFieldLeft]
    ,[Comments]
    ,[QuestionFontColor]
    ,[QuestionBGColor]
    ,[ResponseFontColor]
    ,[ResponseBGColor]
    ,[FormBGColor]
    ,[ClientMasterForm]
    ,[ReportLeftField]
    ,[ReportRowSpace]
    ,[MasterTypeKey]
    ,[FormLabelDefaultWidth]
    ,[CTUserFormsMasterGUID]
    ,[FormFGColor]
    ,[FormBackPattern]
    ,[QuestionFGColor]
    ,[QuestionBackPattern]
    ,[QuestionFontKey]
    ,[QuestionFontBold]
    ,[QuestionFontItalic]
    ,[QuestionFontUnderline]
    ,[QuestionFontOutline]
    ,[QuestionFontShadow]
    ,[QuestionFontJustify]
    ,[ResponseFGColor]
    ,[ResponseBackPattern]
    ,[ResponseFontKey]
    ,[ResponseFontBold]
    ,[ResponseFontItalic]
    ,[ResponseFontUnderline]
    ,[ResponseFontOutline]
    ,[ResponseFontShadow]
    ,[ResponseFontJustify]
    ,[InheritThemeStyle]
    ,[InheritThemeQuestion]
    ,[InheritThemeResponse]
    ,[QuestionFontSize]
    ,[ResponseFontSize]
    ,[CTUserFormsThemeKey]
    ,[CTUserFormsThemeGUID]
    ,[DefaultLineExtra]
    ,[ClientNameYNKey]
    ,[ClientDOBYNKey]
    ,[ClientMedIDYNKey]
    ,[AgencyLogoYNKey]
    ,[ClientNamePositionKey]
    ,[ClientDOBPositionKey]
    ,[ClientMedIDPositionKey]
    ,[AgencyLogoPosition]
    ,[HeaderOrFooterKey]
    ,[WindowHeight]
    ,[WindowWidth])
select
em.[FormDescription]
    ,GETDATE() --em.[EffectiveDate]
    ,NULL      --em.[ExpirationDate]
    ,em.[IsSubForm]
    ,em.[EntryFieldLeft]
    ,em.[Comments]
    ,em.[QuestionFontColor]
    ,em.[QuestionBGColor]
    ,em.[ResponseFontColor]
    ,em.[ResponseBGColor]
    ,em.[FormBGColor]
    ,em.[ClientMasterForm]
    ,em.[ReportLeftField]
    ,em.[ReportRowSpace]
    ,em.[MasterTypeKey]
    ,em.[FormLabelDefaultWidth]
    ,em.[CTUserFormsMasterGUID]
    ,em.[FormFGColor]
    ,em.[FormBackPattern]
    ,em.[QuestionFGColor]
    ,em.[QuestionBackPattern]
    ,em.[QuestionFontKey]
    ,em.[QuestionFontBold]
    ,em.[QuestionFontItalic]
    ,em.[QuestionFontUnderline]
    ,em.[QuestionFontOutline]
    ,em.[QuestionFontShadow]
    ,em.[QuestionFontJustify]
    ,em.[ResponseFGColor]
    ,em.[ResponseBackPattern]
    ,em.[ResponseFontKey]
    ,em.[ResponseFontBold]
    ,em.[ResponseFontItalic]
    ,em.[ResponseFontUnderline]
    ,em.[ResponseFontOutline]
    ,em.[ResponseFontShadow]
    ,em.[ResponseFontJustify]
    ,em.[InheritThemeStyle]
    ,em.[InheritThemeQuestion]
    ,em.[InheritThemeResponse]
    ,em.[QuestionFontSize]
    ,em.[ResponseFontSize]
    ,em.[CTUserFormsThemeKey]
    ,em.[CTUserFormsThemeGUID]
    ,em.[DefaultLineExtra]
    ,em.[ClientNameYNKey]
    ,em.[ClientDOBYNKey]
    ,em.[ClientMedIDYNKey]
    ,em.[AgencyLogoYNKey]
    ,em.[ClientNamePositionKey]
    ,em.[ClientDOBPositionKey]
    ,em.[ClientMedIDPositionKey]
    ,em.[AgencyLogoPosition]
    ,em.[HeaderOrFooterKey]
    ,em.[WindowHeight]
    ,em.[WindowWidth]
	FROM SRC_DBASE.dbo.CTUserFormsMaster em where em.id=@CopyFromCTUserFormsMasterKey

set @NewKey = @@Identity

Select @NewCTUserFormsMasterGUID = CTUserFormsMasterGUID, @NewFormDescription=FormDescription
	from CTUserFormsMaster 
	where ID = @NewKey

set @Key = @NewKey

	-- empty work table
	truncate table #tempCols 
					
	-- get columns for procedurecodedetail  will be used to copy each record
	Insert into #TempCols (TableName, ColName)
					
	Select 'CTUserFormsMaster', sc.Name
		From Syscolumns sc
		join sysobjects so on so.id = sc.id
		where so.name = 'CTUserFormsMaster'
				and sc.name not in ('ID','CTUserFormsMasterGUID','FormDescription')
				
	-- cycle thru proceduredetail columns
		select @MinKeyCol = min(ID), @MaxKeyCol = max(ID) 
		from #TempCols

	set @SqlString = 'Update t set '

	while @MinKeyCol <= @MaxKeyCol
	Begin
						
		select @TableName = tablename,
			@ColName = colname
			From #tempCols 
			where id = @MinKeyCol
						
		set @SqlString = @SqlString + 
			case when @MinKeyCol = 1 then '' else ', ' end+	't.'+@ColName+' = t1.'+@ColName

		set @MinKeyCol= @MinKeyCol + 1
	End  -- @MinKeyCol

	set @SqlString = @SqlString + ' from '+@TableName+ ' t '+
		' join SRC_DBASE.dbo.'+@TableName+ ' t1 on t1.ID = '+str(@CopyFromCTUserFormsMasterKey)+
		' where t.ID = '+str(@NewKey)
print '207'+@SqlString
	execute (@SqlString)					

	-- start CTUserFormsDetail update
	Delete t from #TempDetailList t

	Insert into #TempDetailList (RowTypeKey, CopyCTUserFormsDetailKey)
		Select 1, cfd.ID
		From SRC_DBASE.dbo.CTUserFormsDetail cfd
		where cfd.CTUserFormsMasterKey = @CopyFromCTUserFormsMasterKey
		
	select @MinKey1 = min(ID), @MaxKey1 = max(ID) 
		from #TempDetailList
		where RowTypeKey = 1

	while @MinKey1 <= @MaxKey1
	Begin

		set @DetailKey1 = 0
			
			-- get CTUserFormsDetail to copy from
		Select @DetailKey1 = CopyCTUserFormsDetailKey
			From #TempDetailList
			where RowTypeKey = 1 and ID = @MinKey1

		if @DetailKey1 > 0  -- CTUserFormsDetail
		Begin

			-- create new detail record with @newKey = new formsmaster 
			insert into CTUserFormsDetail (CTUserFormsMasterKey)
					
			Select @NewKey
					
			-- get new detail record key
			Select @NewDetailKey = @@Identity
					
			Select @NewCTUserFormsDetailGUID = CTUserFormsDetailGUID
				from CTUserFormsDetail 
				where ID = @NewDetailKey

			-- update holding record
			Update t
				set t.NewDetailKey = @NewDetailKey
				From #TempDetailList t
				where RowTypeKey = 1 and ID = @MinKey1

			-- empty work table
			Truncate table #tempCols 
					
			-- get columns for procedurecodedetail  will be used to copy each record
			Insert into #TempCols (TableName, ColName)
					
			Select 'CTUserFormsDetail', sc.Name
				From Syscolumns sc
					join sysobjects so on so.id = sc.id
					where so.name = 'CTUserFormsDetail'
							and sc.name not in (	'ID',
																'CTUserFormsMasterKey',
																'CTUserFormsDetailGUID',
																'CTUserFormsQuestionMasterKey',	-- Added CTUserFormsQuestionMasterKey -- WI 16004658, 07/13/2017 CR
																'CTUserFormsMasterGUID')				-- Added CTUserFormsMasterGUID -- WI 16004658, 07/13/2017 CR

			-- cycle thru proceduredetail columns
			select @MinKeyCol = min(ID), @MaxKeyCol = max(ID) 
				from #TempCols

			set @SqlString = 'Update t set '

			while @MinKeyCol <= @MaxKeyCol
			Begin
						
				select @TableName = tablename,
					@ColName = colname
					From #tempCols 
					where id = @MinKeyCol
						
				set @SqlString = @SqlString + 
					case when @MinKeyCol = 1 then '' else ', ' end+
							't.'+@ColName+' = t1.'+@ColName

				set @MinKeyCol= @MinKeyCol + 1
			End  -- @MinKeyCol

			set @SqlString = @SqlString + 
					' from '+@TableName+ ' t '+
					' join SRC_DBASE.dbo.'+@TableName+ ' t1 on t1.ID = '+str(@DetailKey1)+
					' where t.ID = '+str(@NewDetailKey)
print '294 '+@SQLString
			execute (@SqlString)					

		End --	if @DetailKey1 > 0  -- CTUserFormsDetail record succeeded

		set @MinKey1 = @MinKey1 + 1
			
	End --		while @MinKey1 <= @MaxKey1  Next Detail Record

	-- start proc detail updates
	set @NewDetailKey = 0

-- Set the CTUserFormsMasterGUID for the new Detail entries -- WI 16004658, 07/13/2017 CR
UPDATE CTUserFormsDetail
SET CTUserFormsMasterGUID = (SELECT CTUserFormsMasterGUID
													FROM CTUserFormsMaster
													WHERE ID = @NewKey)
WHERE CTUserFormsMasterKey = @NewKey

-- Add a new set of questions to CTUserFormsQuestionMaster with it's own CTUserFormsQuestionMasterGUID -- WI 16004658, 07/13/2017 CR
SELECT @MinKey1 = MIN(CTUserFormsQuestionMasterKey), @MaxKey1 = MAX(CTUserFormsQuestionMasterKey) 
FROM SRC_DBASE.dbo.CTUserFormsDetail
WHERE CTUserFormsMasterKey = @CopyFromCTUserFormsMasterKey

WHILE @MinKey1 <= @MaxKey1
BEGIN
	SET	@QMQuestion = (SELECT Question FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMQTypeKey	 = (SELECT QTypeKey FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey)) 
	SET	@QMDateTypeKey = (SELECT DateTypeKey FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMStringLength = (SELECT StringLength FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMStringFormatKey = (SELECT StringFormatKey FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMRows = (SELECT Rows FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMFieldWidth = (SELECT FieldWidth FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMComments = (SELECT Comments FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMCTUserFormsCoreFieldKey = (SELECT CTUserFormsCoreFieldKey FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	SET	@QMCTUserFormsQuestionMasterGUID = NewID()
	SET	@QMCTUserFormsCoreFieldGUID = (SELECT CTUserFormsCoreFieldGUID FROM SRC_DBASE.dbo.CTUserFormsQuestionMaster WHERE ID = @MinKey1 AND Question IN(SELECT Question FROM CTUserFormsDetail WHERE CTUserFormsMasterKey = @NewKey))
	
	IF @QMQuestion IS NOT NULL
	BEGIN
		INSERT INTO CTUserFormsQuestionMaster (Question, QTypeKey, DateTypeKey, StringLength, StringFormatKey, Rows, FieldWidth, Comments, CTUserFormsCoreFieldKey, CTUserFormsQuestionMasterGUID, CTUserFormsCoreFieldGUID)
		VALUES (@QMQuestion,@QMQTypeKey,@QMDateTypeKey,@QMStringLength,@QMStringFormatKey,@QMRows,@QMFieldWidth,@QMComments,@QMCTUserFormsCoreFieldKey,@QMCTUserFormsQuestionMasterGUID,@QMCTUserFormsCoreFieldGUID)
	
		-- Update the new detail entries with the IDs and GUIDs of the questions inserted into the Question Master -- WI 16004658, 07/13/2017 CR
		SET @QMNewID = @@IDENTITY

Print '339 CTUserFormsQuestionMaster row: QMnewID '+convert(varchar(10), @QMNewID)+' '+ @QMQuestion 
--,@QMQTypeKey,@QMDateTypeKey,@QMStringLength,@QMStringFormatKey,@QMRows,@QMFieldWidth,@QMComments,@QMCTUserFormsCoreFieldKey,@QMCTUserFormsQuestionMasterGUID,@QMCTUserFormsCoreFieldGUID
	
		UPDATE CTUserFormsDetail
		SET	CTUserFormsQuestionMasterKey = @QMNewID, 
				CTUserFormsQuestionMasterGUID = @QMCTUserFormsQuestionMasterGUID
		WHERE Question = @QMQuestion AND CTUserFormsMasterKey = @NewKey

		-- Enter Drop Down or MultiCheck options into CTUserFormsQuestionListOptions -- WI 16004658, 07/13/2017 CR
		IF @QMQTypeKey in (3, 4)	-- 3 = Drop Down, 4 = MultiCheck List Box
		BEGIN
			SELECT @MinKey2 = MIN(ID), @MaxKey2 = MAX(ID)
			FROM SRC_DBASE.dbo.CTUserFormsQuestionListOptions
			WHERE CTUserFormsQuestionMasterKey = @MinKey1
			
			WHILE @MinKey2 <= @MaxKey2
			BEGIN
				SET @OCTUserFormsQuestionMasterKey = @QMNewID
				SET @ODescription = (SELECT Description FROM SRC_DBASE.dbo.CTUserFormsQuestionListOptions WHERE ID = @MinKey2 AND CTUserFormsQuestionMasterKey = @MinKey1)
				SET @ODisplayOrder = (SELECT DisplayOrder FROM SRC_DBASE.dbo.CTUserFormsQuestionListOptions WHERE ID = @MinKey2 AND CTUserFormsQuestionMasterKey = @MinKey1)	
				SET @OEffectiveDate = (SELECT EffectiveDate FROM SRC_DBASE.dbo.CTUserFormsQuestionListOptions WHERE ID = @MinKey2 AND CTUserFormsQuestionMasterKey = @MinKey1)
				SET @OExpirationDate = (SELECT ExpirationDate FROM SRC_DBASE.dbo.CTUserFormsQuestionListOptions WHERE ID = @MinKey2 AND CTUserFormsQuestionMasterKey = @MinKey1)
				SET @OCTUserFormsQuestionListOptionsGUID = NewID()
				SET @OCTUserFormsQuestionMasterGUID = @QMCTUserFormsQuestionMasterGUID
				
				IF @ODescription IS NOT NULL
				BEGIN			
					INSERT INTO CTUserFormsQuestionListOptions (CTUserFormsQuestionMasterKey,Description,DisplayOrder,EffectiveDate,ExpirationDate,CTUserFormsQuestionListOptionsGUID,CTUserFormsQuestionMasterGUID)
					VALUES (@OCTUserFormsQuestionMasterKey,@ODescription,@ODisplayOrder,@OEffectiveDate,@OExpirationDate,@OCTUserFormsQuestionListOptionsGUID,@OCTUserFormsQuestionMasterGUID)
				END

				SET @MinKey2 = @MinKey2 + 1

			END -- WHILE @MinKey2 <= @MaxKey2
		END -- IF @QMQTypeKey in (3, 4)
	END -- IF @QMQuestion IS NOT NULL

	SET @MinKey1 = @MinKey1 + 1
END -- WHILE @MinKey1 <= @MaxKey1

-- Insert the new detail control records
/* Insert into CTUserFormsDetailControl
		(CTUserFormsDetailKey, CTUserFormsQuestionListOptionsKey, 
				RowTypeKey, TargetCTUserFormsDetailKey, 
				CTUserFormsDetailGUID, CTUserFormsQuestionListOptionsGUID, TargetCTUserFormsDetailGUID)

Select 
	t.NewDetailKey, cdc.CTUserFormsQuestionListOptionsKey,
	cdc.RowTypeKey, t1.NewDetailKey,
	d.CTUserFormsDetailGUID, cdc.CTUserFormsQuestionListOptionsGUID, d1.CTUserFormsDetailGUID

From #TempDetailList t
join CTUserFormsDetailControl cdc on cdc.ID =  t.CopyCTUserFormsDetailKey
join #TempDetailList t1 on t1.CopyCTUserFormsDetailKey = cdc.TargetCTUserFormsDetailKey
join CTUserFormsDetail d on d.ID = t.NewDetailKey
join CTUserFormsDetail d1 on d1.ID = t1.NewDetailKey

Select @NewKey

GO
*/

