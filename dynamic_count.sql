 declare @Query as nvarchar(max) = '',
@database nvarchar(10) = 'XETL', -- change to match desired db
@schema nvarchar(10) = 'UAL',
@prefix nvarchar(10) = 'hld_'; -- change with the appropriate prefix hld_ or etl_



	select @Query = @Query + 'Select count(*) as cnt ' +
	', ' + ''''  + quotename(Table_name) + ''''  + ' as tablename ' +
	' from ' +
	@database + '.' +
	@schema + '.' +
	quotename(Table_name) + 
	' UNION ALL ' +
	CHAR(10)
	

	from XETL.INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA = @schema -- swap the coresponding xdw / xetl db
	and TABLE_NAME like '%' +@prefix+'%'
	PRINT @Query