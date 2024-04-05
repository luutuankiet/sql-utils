select 
TABLE_NAME
from XDW.INFORMATION_SCHEMA.TABLES
where TABLE_SCHEMA = 'UAL'



select * into ##ual_backup_fWorkflowSA              from xdw.ual.fWorkflowSA            
select * into ##ual_backup_fActivitySA				 from xdw.ual.fActivitySA
select * into ##ual_backup_dDates					 from xdw.ual.dDates
select * into ##ual_backup_fWorkflowSP				 from xdw.ual.fWorkflowSP
select * into ##ual_backup_dCostCenter				 from xdw.ual.dCostCenter
select * into ##ual_backup_fTimesheetActivitySA	     from xdw.ual.fTimesheetActivitySA
select * into ##ual_backup_fTimesheetActivitySP	 from xdw.ual.fTimesheetActivitySP
select * into ##ual_backup_fActivitySP				 from xdw.ual.fActivitySP
select * into ##ual_backup_dJobSeeker				 from xdw.ual.dJobSeeker
select * into ##ual_backup_dWorkOrder				 from xdw.ual.dWorkOrder
select * into ##ual_backup_dActivityType			 from xdw.ual.dActivityType
select * into ##ual_backup_fFinancialSA			 from xdw.ual.fFinancialSA
select * into ##ual_backup_dJobPosting				 from xdw.ual.dJobPosting
select * into ##ual_backup_fFinancialSP			 from xdw.ual.fFinancialSP
select * into ##ual_backup_dSOW					 from xdw.ual.dSOW
select * into ##ual_backup_dSupplier				 from xdw.ual.dSupplier
select * into ##ual_backup_dContractor				 from xdw.ual.dContractor
select * into ##ual_backup_dCostCenter_Bridge		 from xdw.ual.dCostCenter_Bridge




-- truncate


truncate table xdw.ual.fWorkflowSA          
truncate table xdw.ual.fActivitySA			
truncate table xdw.ual.dDates				
truncate table xdw.ual.fWorkflowSP			
truncate table xdw.ual.dCostCenter			
truncate table xdw.ual.fTimesheetActivitySA	
truncate table xdw.ual.fTimesheetActivitySP	
truncate table xdw.ual.fActivitySP			
truncate table xdw.ual.dJobSeeker			
truncate table xdw.ual.dWorkOrder			
truncate table xdw.ual.dActivityType		
truncate table xdw.ual.fFinancialSA			
truncate table xdw.ual.dJobPosting			
truncate table xdw.ual.fFinancialSP			
truncate table xdw.ual.dSOW					
truncate table xdw.ual.dSupplier			
truncate table xdw.ual.dContractor			
truncate table xdw.ual.dCostCenter_Bridge	


-- rollback

 

insert into xdw.ual.fWorkflowSA                    select * from ##ual_backup_fWorkflowSA               
insert into xdw.ual.fActivitySA					  select * from ##ual_backup_fActivitySA			
insert into xdw.ual.dDates						  select * from ##ual_backup_dDates				
insert into xdw.ual.fWorkflowSP					  select * from ##ual_backup_fWorkflowSP			
insert into xdw.ual.dCostCenter					  select * from ##ual_backup_dCostCenter			
insert into xdw.ual.fTimesheetActivitySA			  select * from ##ual_backup_fTimesheetActivitySA	
insert into xdw.ual.fTimesheetActivitySP			  select * from ##ual_backup_fTimesheetActivitySP	
insert into xdw.ual.fActivitySP					  select * from ##ual_backup_fActivitySP			
insert into xdw.ual.dJobSeeker					  select * from ##ual_backup_dJobSeeker			
insert into xdw.ual.dWorkOrder					  select * from ##ual_backup_dWorkOrder			
insert into xdw.ual.dActivityType				  select * from ##ual_backup_dActivityType		
insert into xdw.ual.fFinancialSA					  select * from ##ual_backup_fFinancialSA			
insert into xdw.ual.dJobPosting					  select * from ##ual_backup_dJobPosting			
insert into xdw.ual.fFinancialSP					  select * from ##ual_backup_fFinancialSP			
insert into xdw.ual.dSOW							  select * from ##ual_backup_dSOW					
insert into xdw.ual.dSupplier					  select * from ##ual_backup_dSupplier			
insert into xdw.ual.dContractor					  select * from ##ual_backup_dContractor			
insert into xdw.ual.dCostCenter_Bridge			  select * from ##ual_backup_dCostCenter_Bridge	