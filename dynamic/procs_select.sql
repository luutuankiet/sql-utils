DECLARE @dynamicQuery AS NVARCHAR(max) = '',
	@database NVARCHAR(10) = 'XETL', -- change to match desired db
	@schema NVARCHAR(10) = 'UAL',
	@prefix NVARCHAR(10) = 'etl_', -- change with the appropriate prefix hld_ or etl_
	@command NVARCHAR(100) = 'exec';

SELECT @dynamicQuery = @dynamicQuery + -- the loop
	@command + ' ' + @database + '.' + @schema + '.' + quotename(ROUTINE_NAME) + CHAR(10) + '; '
FROM xetl.INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_SCHEMA = @schema -- swap the coresponding xdw / xetl db
	AND ROUTINE_NAME LIKE '%' + @prefix + '%'
	AND ROUTINE_NAME LIKE '%popd%'

PRINT @dynamicQuery
