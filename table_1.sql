SELECT * FROM sabeel2912.mdm_table_1;

insert into sabeel2912.mdm_table_1 (Head, stg_1, stg_2, Total_Records) 
values('Data Ingestion', (select count(*) from sabeel2912.uncleaned_data
where source = 'stg_1'), (select count(*) from sabeel2912.uncleaned_data
where source = 'stg_2'), (select count(*) from sabeel2912.uncleaned_data)),

('Foreign Country Removal', (select count(*) from sabeel2912.foreign_cleaning
where source = 'stg_1'), (select count(*) from sabeel2912.foreign_cleaning
where source = 'stg_2'), (select count(*) from sabeel2912.foreign_cleaning)),

('@about’ - Removal', (select count(*) from sabeel2912.email_cleaning
where source = 'stg_1'), (select count(*) from sabeel2912.email_cleaning
where source = 'stg_2'), (select count(*) from sabeel2912.email_cleaning)),

('Test Record Removal',(select count(*) from sabeel2912.test_record_cleaning
where source = 'stg_1'), (select count(*) from sabeel2912.test_record_cleaning
where source = 'stg_2'),(select count(*) from sabeel2912.test_record_cleaning)),

('ZUMMY/ PJDUM PAN Removal', (select count(*) from sabeel2912.pan_cleaning
where source = 'stg_1'), (select count(*) from sabeel2912.pan_cleaning
where source = 'stg_2'), (select count(*) from sabeel2912.pan_cleaning)),

('PAN & PIN Validation', (select count(*) from sabeel2912.pin_pan_valid
where source = 'stg_1'), (select count(*) from sabeel2912.pin_pan_valid
where source = 'stg_2'), (select count(*) from sabeel2912.pin_pan_valid)),

('Total Records', (select count(*) from sabeel2912.final_data
where source = 'stg_1'), (select count(*) from sabeel2912.final_data
where source = 'stg_2'), (select count(*) from sabeel2912.final_data));
