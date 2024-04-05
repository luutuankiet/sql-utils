DECLARE @Query AS NVARCHAR(max) = '',
	@database NVARCHAR(10) = 'XETL', -- change to match desired db
	@schema NVARCHAR(10) = 'UAL',
	@prefix NVARCHAR(10) = 'hld_';-- change with the appropriate prefix hld_ or etl_

SELECT @Query = @Query + 'Select count(*) as cnt ' + ', ' + '''' + quotename(Table_name) + '''' + ' as tablename ' + ' from ' + @database + '.' + @schema + '.' + quotename(Table_name) + ' UNION ALL ' + CHAR(10)
FROM XETL.INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = @schema -- swap the coresponding xdw / xetl db
	AND TABLE_NAME LIKE '%' + @prefix + '%'

PRINT @Query
