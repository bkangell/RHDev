-- CTONE-713: script to update UseGroupNo to No in ProcedureCodeRate
-- TEST --sp_MSForEachDB 'USE ? IF ''?'' LIKE ''ASP_MMHLA_QA''
-- Iteration for LA Agencies
sp_MSForEachDB 'USE ? IF ''?'' LIKE ''ASP_%%LA'' AND ''?'' NOT LIKE ''%%QA'' 
AND ''?'' NOT LIKE ''ASP_RSLA'' AND ''?'' NOT LIKE ''ASP_BSFSOLA'' AND ''?'' NOT LIKE ''ASP_MBHSMS''
AND ''?'' NOT LIKE ''ASP_LCCLA''
BEGIN
BEGIN TRAN
DECLARE @GuarnIDInput nvarchar(2000)
DECLARE @GuarnTmpTbl TABLE (ID INT, GuarantorID VARCHAR(20))
DECLARE @RowID INT = 0
DECLARE @CursorCounter INT
DECLARE @NewDetailKey INT
DECLARE @BakTableName VARCHAR(100)
DECLARE @BackupSQL NVARCHAR(1000)
SET @GuarnIDInput = ''2300'' 
SET @BakTableName = ''bak.ProcedureCodeRate_RBJ_'' + REPLACE(REPLACE(REPLACE(CONVERT(nvarchar(30),GETDATE(),126),N''-'',N''''),N'':'',N''''),N''.'',N'''') + N''''
SET @BackupSQL = ''SELECT * INTO '' + @BakTableName + '' FROM ProcedureCodeRate''
EXEC sp_executesql @BackupSQL
SET @GuarnIDInput = REPLACE(@GuarnIDInput,'' '','','') 
IF LEN(@GuarnIDInput) > 0
BEGIN
  INSERT INTO @GuarnTmpTbl
  SELECT 0, Value AS GuarantorID
  FROM [CTClrutility].[SplitAndPivot](@GuarnIDInput,'','')
END
UPDATE tmp
SET tmp.ID = g.ID FROM Guarantor g INNER JOIN @GuarnTmpTbl tmp ON tmp.GuarantorID = g.GuarantorID

UPDATE pcr 
SET pcr.UseGroupNo = ''N''
FROM ProcedureCodeRate pcr
where ID in
(
SELECT pcr.id
FROM dbo.ProcedureCode pc INNER JOIN dbo.ProcedureCodeDetail pcd ON pc.id = pcd.ProcedureKey
						  INNER JOIN dbo.ProcedureCodeRate pcr ON pcd.ID = pcr.ProcedureDetailKey
							    AND pcr.GuarantorKey IN (SELECT ID FROM @GuarnTmpTbl)
WHERE pcr.id IS NOT NULL
  and coalesce(pcr.UseGroupNo,''X'')<>''N''
)
INSERT INTO  ProcedureCodeRate (GuarantorKey, ProcedureDetailKey, Rate, UnitToTimeConversion, UseGroupNo)
SELECT temp.ID, pcd.ID,pcd.Fee, pcd.UnitToTimeConversion, ''N''
	FROM @GuarnTmpTbl temp CROSS JOIN dbo.ProcedureCode pc
	INNER JOIN dbo.ProcedureCodeDetail pcd ON pc.id = pcd.ProcedureKey
	LEFT OUTER JOIN dbo.ProcedureCodeRate pcr ON pcd.ID = pcr.ProcedureDetailKey
   and pcr.GuarantorKey = temp.ID
WHERE pcr.ID is null
COMMIT TRAN
select db_name()
END'