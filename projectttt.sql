use project;
select * from manufacturing;

# Manufactured Qty
select sum(processed_qty)Total_count from manufacturing; 

 # Rejected Qty
select sum(Rejected_qty)Rejected_Qty from manufacturing; 

# Wastage_qty
select sum(wo_qty)from manufacturing; 

# Employee wise rejected qty
select Emp_name, sum(rejected_qty) emp_wise_rejected_qty from manufacturing
group by Emp_Name
order by emp_wise_rejected_qty,emp_name desc; 

# Machine wise rejected qty
select Machine_code ,sum(rejected_qty) Machine_wise_rejected_qty from manufacturing
group by Machine_code
order by Machine_wise_rejected_qty desc; # Not working


# Manufactured vs rejected
select sum(processed_qty) Manufactured, sum(rejected_qty) Rejected  from manufacturing; 

# Department wise manufactre vs rejected
select department_name Department_name,sum(processed_qty)Manufacture,sum(rejected_qty) Rejected from manufacturing
group by department_name
order by manufacture,Rejected; 





