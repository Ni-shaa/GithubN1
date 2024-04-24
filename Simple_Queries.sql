#write a query to display all the details from patient table.

select * from patient;
---------------------------------------------------------------

#write a query to display all the details from personal_details.

select * from personal_details;
----------------------------------------------------------------

#write a query to display all the details from doctor_details.

select * from doctor_details;
----------------------------------------------------------------

#write a query to display all the details from discharge_details.

select * from discharge_details;
----------------------------------------------------------------

#write a query to display all the details from bill_details.

select * from bill_details;
----------------------------------------------------------------

#write a query to display p_id, p_name from patient table where p_name starts with 'G'.

select p_id, p_name from patient 
where P_name like "G%";

#write a query to display p_id, p_name, address from patient table where patient lives in 'chennai'.

select p_id, p_name, address from patient
where address like "%chennai%";
--------------------------------------------------------------------------------------------------------

#write a query to display p_id, father_name, ward_no, pt_condition of the patients who are admitted in the ward_no lies between '80' to '101'.

select p_id, father_name, ward_no, pt_condition
from personal_details
where ward_no between 80 and 101;

#write a query to display p_id, pt_condition, ward_no, join_date of the patients who joined after '2024-01-01'.

select p_id, pt_condition, ward_no, join_date
from personal_details
where Join_date > "2024-01-01";
---------------------------------------------------------------------------------------------------------

#write a query to display doc_id, doc_name, doc_mail, pt_condition of the patients whose doc_id is not null and order by doc_id.

select doc_id, doc_name, doc_mail, pt_condition
from doctor_details
where Doc_Id is not null
order by Doc_Id asc;

#write a query to display doc_id of the patients and use group by clause.

select doc_id, count(*)
from doctor_details
group by Doc_Id;
----------------------------------------------------------------------------------------------------------

#write a query to display join_date, join_time, dis_date, dis_time and p_id of the patients whom joined between '2023-12-04' to '2023-06-12'.

select join_date, join_time, dis_date, dis_time, p_id
from discharge_details
where Join_date= "2023-12-04" or join_date ="2023-06-12";

#write a query to display max(join_date) of the patients whom discharged before '2024-12-31'.

select max(join_date)
from discharge_details
where Dis_date < "2024-12-31";
-----------------------------------------------------------------------------------------------------------

#write a query to display p_id, p_name, doc_id, ward_no of the patients whose ward_no is not null.

select P_id, P_name, Doc_id, ward_no
from bill_details
where ward_no is not null;

#write a query to display p_id, p_name, doc_id, bill_price of the patients whose doc_id is 'G_8' and 'A_9'--

select p_id, P_name, Doc_Id, bill_price
from bill_details
where doc_id in ("G_8","A_9");
-----------------------------------------------------------------------------------------------------------

