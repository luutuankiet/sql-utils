-- generate xdw counts 
DECLARE @countQuery AS NVARCHAR(max) = '',
	@database NVARCHAR(10) = 'XDW', -- change to match desired db
	@schema NVARCHAR(10) = 'UAL',
	@prefix NVARCHAR(10) = '';-- change with the appropriate prefix hld_ or etl_

SELECT @countQuery = @countQuery + 'select * into ' + '##ual_backup_' + Table_name + ' from ' + @database + '.' + @schema + '.' + quotename(Table_name) + ';'
FROM xdw.INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = @schema -- swap the coresponding xdw / xetl db
	AND TABLE_NAME LIKE '%' + @prefix + '%'

PRINT @countQuery -- debug
