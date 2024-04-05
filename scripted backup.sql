-- generate xdw counts 
declare @countQuery as nvarchar(max) = '',
@database nvarchar(10) = 'XDW', -- change to match desired db
@schema nvarchar(10) = 'UAL',
@prefix nvarchar(10) = ''; -- change with the appropriate prefix hld_ or etl_



	select @countQuery = @countQuery +
	'select * into ' +
	 '##ual_backup_' + Table_name  + 
	' from ' + 
	@database + '.' +@schema + '.' + quotename(Table_name) +
	';'


	from xdw.INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA = @schema -- swap the coresponding xdw / xetl db
	and TABLE_NAME like '%' +@prefix+'%'
	print @countQuery -- debug