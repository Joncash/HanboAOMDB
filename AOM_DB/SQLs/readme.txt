Schema 更新 or 資料更新 ... SQL Scripts 放在這個目錄
用來更新客戶端的資料庫

### 新增欄位範例
IF (SELECT Count(name) 
	From syscolumns
	Where id = (SELECT id 
				From sysobjects 
				Where name = N'MyTable')
				and name = N'Note'
	) = 0
BEGIN
	ALTER Table MyTable
		ADD Note nvarchar(255)
END