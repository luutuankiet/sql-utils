-- prequisite : table must be created, and both col orders in csv + table must already be synced


DECLARE @filepath NVARCHAR(500),
    @bulkinsert NVARCHAR(500)

SET @FilePath = '\\wsp003\SFTP\United Airlines\misc\tmp.csv'
SET @BulkInsert = 'bulk insert ' + 'UAL.##tmp' + ' from ' + '''' + @filepath + '''' + ' with 
 (
   FORMAT = ''CSV'',
   FIELDTERMINATOR = ''|'',
	firstrow = 2)
'
