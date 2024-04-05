
 declare @dynamicQuery as nvarchar(max) = '',
@database nvarchar(10) = 'XETL', -- change to match desired db
@schema nvarchar(10) = 'UAL',
@prefix nvarchar(10) = 'etl_', -- change with the appropriate prefix hld_ or etl_
@command nvarchar(100) = 'exec';




	select @dynamicQuery = @dynamicQuery + -- the loop
	@command + ' ' +
	@database + '.' +
	@schema + '.' +
	quotename(ROUTINE_NAME) + 
	CHAR(10) +
	'; '
 
	from xetl.INFORMATION_SCHEMA.ROUTINES
	
	where 
	ROUTINE_SCHEMA = @schema -- swap the coresponding xdw / xetl db
	and ROUTINE_NAME like '%' +@prefix+'%'
	and ROUTINE_NAME like '%popd%'

	
	PRINT @dynamicQuery
