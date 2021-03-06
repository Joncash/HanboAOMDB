-- MacroPlan 新增 TechnicalDrawingModel 欄位
IF(
	SELECT count(name) FROM syscolumns
	WHERE id = (SELECT id FROM sysobjects WHERE name = N'MacroPlan') and name = N'TechnicalDrawingModel'
   ) = 0
BEGIN
	ALTER TABLE MacroPlan
		ADD [TechnicalDrawingModel] [xml] NULL
	
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程圖模型 xml 描述檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MacroPlan', @level2type=N'COLUMN',@level2name=N'TechnicalDrawingModel'
END

