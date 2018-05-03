/* 17007136 - FormList Script for Forms Tracker v3 */
SET NOCOUNT ON; 
DECLARE @ID						int;
DECLARE @Form_Description       VARCHAR(100);
DECLARE @WindowLibName          CHAR(40);
DECLARE @WindowName             CHAR(100);
DECLARE @ReportLibName          CHAR(40);
DECLARE @ReportName             CHAR(100);
DECLARE @TableName              CHAR(40);
DECLARE @EffectiveDate          DATETIME;
DECLARE @SignForm               INT;
DECLARE @SignatureType          INT;
DECLARE @ImageOnly              BIT;
DECLARE @CreateEmailKey         INT;
DECLARE @EmailComment           VARCHAR(1024);
DECLARE @FormSaveState          INT;
DECLARE @AvailSigPos			CHAR(40);
DECLARE @FormCount				INT;
DECLARE @ROICat					INT;
DECLARE @CategoryKey			INT;
DECLARE @PullPrevRow			BIT;
DECLARE @ResubmitButton			INT;
DECLARE @PrintBarCode			INT;
SET @Form_Description           = 'Gandara ICP Treatment Plan ';
SET @WindowLibName              = 'AGENCYFORMS';
SET @WindowName                 = 'wClientISP_GCMA';
SET @ReportLibName              = 'AGENCYFORMS';
SET @ReportName                 = 'rClientISP_GCMA';
SET @TableName                  = 'ClientISP';
SET @AvailSigPos				= '';
SET @EffectiveDate              = NULL;
SET @SignForm                   = 1;
SET @ResubmitButton				= 1;	
SET @PrintBarCode				= 2;
SET @SignatureType              = 2;
SET @ImageOnly                  = 0;
SET @CreateEmailKey             = NULL;
SET @FormSaveState              = 0;
SET @ROICat						= NULL;
SET @CategoryKey				= 1;	
SET @PullPrevRow				= 1;

IF EXISTS (SELECT 1 FROM [dbo].[ProviderMaster] WHERE [CLMTRKNetworkId]='GCMAMA')
BEGIN
	SET @ID = (SELECT [ID] FROM [dbo].[FormList] 
			   WHERE ([WindowLibName]=@WindowLibName) 
			   and ([WindowName]=@WindowName) 
			   and ([ReportLibName]=@ReportLibName) 
			   and ([ReportName]=@ReportName) 
			   and ([Form_Description] = @Form_Description) 
			   AND 
			   (GETDATE() BETWEEN ISNULL(FormList.EffectiveDate,'1980-01-01 00:00:00.000') 
			   AND ISNULL(FormList.ExpirationDate,GETDATE())))
	IF (@ID>0)
	BEGIN 
	    update [dbo].[FormList]
	        set [AvailSignaturePos]=@AvailSigPos
	        where [dbo].[FormList].[ID]=@ID
		PRINT '[ DONE ] - '''+@Form_Description+''' updated.';
	END 
	ELSE 
	BEGIN 
		INSERT INTO [dbo].[FormList]
		([Form_Description]
		, [WindowLibName]
		, [WindowName]
		, [ReportLibName]
		, [ReportName]
		, [TableName]
		, [EffectiveDate]
		, [SignForm]
		, [ResubmitButton]
		, [PrintBarCode]
		, [SignatureType]
		, [ImageOnly]
		, [AvailSignaturePos]
		, [CreateEmailKey]
		, [EmailComment]
		, [FormSaveState]
		, [PullPreviousRow]
		, [ROICatKey]
		, [CategoryKey])
		VALUES
		(@Form_Description
		, @WindowLibName
		, @WindowName
		, @ReportLibName
		, @ReportName
		, @TableName
		, @EffectiveDate
		, @SignForm
		, @ResubmitButton
		, @PrintBarCode
		, @SignatureType
		, @ImageOnly
		, @AvailSigPos
		, @CreateEmailKey
		, @EmailComment
		, @FormSaveState
		, @PullPrevRow
		, @ROICat
		, @CategoryKey);

		IF exists (SELECT [Form_Description] 
				   FROM [dbo].[FormList] 
				   WHERE ([WindowLibName]=@WindowLibName) 
				   and ([WindowName]=@WindowName) 
				   and ([ReportLibName]=@ReportLibName) 
				   and ([ReportName]=@ReportName) 
				   and ([Form_Description] = @Form_Description) 
				   AND 
				   (GETDATE() BETWEEN ISNULL([FormList].[EffectiveDate],'1980-01-01 00:00:00.000') 
				   AND ISNULL([FormList].[ExpirationDate],GETDATE())))
		BEGIN 
			PRINT '[ DONE ] - Successfully added the FormList entry for the form '''+@Form_Description+'''.';
		END 
		ELSE 
		BEGIN 
			PRINT '[FAILED] - Failed to add a FormList entry for the form '''+@Form_Description+'''! - Error on line '+CAST(ISNULL(ERROR_LINE(),'') AS VARCHAR(1000))+': '+CAST(ISNULL(ERROR_MESSAGE(),'') AS VARCHAR(1000));
		END 
	END;
END
ELSE
BEGIN
	PRINT '[ DONE ] - Agency is not set up for GCMAMA';
END
--================================================================ end of FormList Entry ===================================

