SELECT * FROM sabeel2912.table_2;
use sabeel2912;
create table table_2(Attribute text , Total int ,count int, Count_percent float,
Missing_Values int, Missing_value_percent float , Unique_ int ,Unique_percent float, Valid_Against_Regex int , Valid_percent int);

insert into sabeel2912.table_2 (Attribute , Total ,count , Count_percent ,
Missing_Values , Missing_value_percent , Unique_  ,Unique_percent , Valid_Against_Regex , Valid_percent )

values('Pan_org',(select count(*) from sabeel2912.final_data),
(select count(pan_org) from sabeel2912.final_data),
(select count(pan_org) * 100 / count(*) from sabeel2912.final_data),
(select count(*) from sabeel2912.final_data where pan_org is NULL),
(select sum(case when pan_org is null then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data),
(select count(distinct(pan_org)) from sabeel2912.final_data),
(select  count(distinct(pan_org)) * 100 / count(*) from sabeel2912.final_data),
'' ,''),

('Org_name',(select count(*) from sabeel2912.final_data),
(select count(org_name) from sabeel2912.final_data),
(select count(org_name) * 100 / count(*) from sabeel2912.final_data), 
(select count(*) from sabeel2912.final_data where org_name is NULL),
(select sum(case when org_name is null then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data), 
(select count(distinct(org_name)) from sabeel2912.final_data), 
(select  count(distinct(org_name)) * 100 / count(*) from sabeel2912.final_data),
'',''), 

('Pan',(select count(*) from sabeel2912.final_data),## Total data 
(select count(pan) from sabeel2912.final_data where pan !=''),## org_name count
(select sum(case when pan !='' then 1 else 0 end)* 100 / count(*) from sabeel2912.final_data),## percentage
(select count(*) from sabeel2912.final_data where pan = ''), ## missing value
(select sum(case when pan = '' then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data), ## missing value %
(select count(distinct(pan)) from sabeel2912.final_data), ## unique
(select  count(distinct(pan)) * 100 / count(*) from sabeel2912.final_data), ## unique %
(select count(pan) from sabeel2912.final_data where pan regexp '^[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}$'),
(select sum(case when pan regexp '^[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}$' then 1 else 0 end ) * 100 / count(*) from sabeel2912.final_data)),

('Gstn',(select count(*) from sabeel2912.final_data),## Total data 
(select count(gstn) from sabeel2912.final_data where gstn !=''),## org_name count
(select sum(case when gstn !='' then 1 else 0 end)* 100 / count(*) from sabeel2912.final_data), ## percentage
(select count(*) from sabeel2912.final_data where gstn = ''), ## missing value
(select sum(case when gstn = '' then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data), ## missing value %
(select count(distinct(gstn)) from sabeel2912.final_data), ## unique
(select  count(distinct(gstn)) * 100 / count(*) from sabeel2912.final_data), ## unique %
(select count(gstn) from sabeel2912.final_data where gstn regexp '^[0-9]{2}[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}[1-9A-Za-z]{1}[Zz]{1}[0-9A-Za-z]{1}$'),
(select sum(case when gstn regexp '^[0-9]{2}[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}[1-9A-Za-z]{1}[Zz]{1}[0-9A-Za-z]{1}$' then 1 else 0 end ) * 100 / count(*) from sabeel2912.final_data)),


('Cin',(select count(*) from sabeel2912.final_data),## Total data 
(select count(cin) from sabeel2912.final_data where cin !=''),## org_name count
(select sum(case when cin !='' then 1 else 0 end)* 100 / count(*) from sabeel2912.final_data), ## percentage
(select count(*) from sabeel2912.final_data where cin = ''),## missing value
(select sum(case when cin = '' then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data),## missing value %
(select count(distinct(cin)) from sabeel2912.final_data), ## unique
(select  count(distinct(cin)) * 100 / count(*) from sabeel2912.final_data), ## unique %
(select count(cin) from sabeel2912.final_data where cin regexp '^([LU]{1}[0-9]{5}[A-Z]{2}[0-9]{4}(FLC|FTC|GAP|GAT|GOI|NPL|OPC|PLC|PTC|SGC|ULL|ULT)[0-9]{6})$'),
(select sum(case when cin regexp '^([LU]{1}[0-9]{5}[A-Z]{2}[0-9]{4}(FLC|FTC|GAP|GAT|GOI|NPL|OPC|PLC|PTC|SGC|ULL|ULT)[0-9]{6})$' then 1 else 0 end ) * 100 / count(*) from sabeel2912.final_data)),

('email',(select count(*) from sabeel2912.final_data),## Total data 
(select count(email) from sabeel2912.final_data where email !=''),## org_name count
(select sum(case when email !='' then 1 else 0 end)* 100 / count(*) from sabeel2912.final_data),## percentage
(select count(*) from sabeel2912.final_data where email = ''), ## missing value
(select sum(case when email = '' then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data), ## missing value %
(select count(distinct(email)) from sabeel2912.final_data), ## unique
(select  count(distinct(email)) * 100 / count(*) from sabeel2912.final_data), ## unique %
(select count(email) from sabeel2912.final_data where email regexp '^[a-zA-Z0-9_+&-]+(?:\\.[a-zA-Z0-9_+&-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$'),
(select sum(case when email regexp '^[a-zA-Z0-9_+&-]+(?:\\.[a-zA-Z0-9_+&-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$' then 1 else 0 end ) * 100 / count(*) from sabeel2912.final_data)),


('Mobile',(select count(*) from sabeel2912.final_data),## Total data 
(select count(mobile) from sabeel2912.final_data where mobile !=''),## org_name count
(select sum(case when mobile !='' then 1 else 0 end)* 100 / count(*) from sabeel2912.final_data), ## percentage
(select count(*) from sabeel2912.final_data where mobile = ''), ## missing value
(select sum(case when mobile = '' then 1 else 0 end) * 100 / count(*) from sabeel2912.final_data), ## missing value %
(select count(distinct(mobile)) from sabeel2912.final_data), ## unique
(select  count(distinct(mobile)) * 100 / count(*) from sabeel2912.final_data), ## unique %
(select count(mobile) from sabeel2912.final_data where mobile regexp '^\\+91[6-9]?[0-9]{9}$'),
(select sum(case when mobile regexp '^\\+91[6-9]?[0-9]{9}$' then 1 else 0 end ) * 100 / count(*) from sabeel2912.final_data));
