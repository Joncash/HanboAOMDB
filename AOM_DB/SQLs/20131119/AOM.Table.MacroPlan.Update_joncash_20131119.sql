
IF(
	SELECT count(name) FROM syscolumns
	WHERE id = (SELECT id FROM sysobjects WHERE name = N'MacroPlan') and name = N'Snapshot'
   ) = 0
BEGIN
	ALTER TABLE MacroPlan
		ADD [Snapshot] [varbinary](max) NULL

	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'程式編輯縮圖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MacroPlan', @level2type=N'COLUMN',@level2name=N'Snapshot'
END

