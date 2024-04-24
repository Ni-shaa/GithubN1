create table patient(
P_Id int,
P_name varchar(50) not null,
Ph_no bigint not null,
mail varchar(50) not null,
address varchar(100),
primary key(P_Id));

insert into patient(P_Id, P_name, Ph_no, mail,address)
values(1,"Geetha",9087679021,"geethas09@gmail.com","No: 5 kaliamman koil street, Thiruvallur"),
(2,"Ram",8909113421,"ramram@gmail.com","No:10/6 Ambedkar nagar, Todairpet"),
(3,"Sripriya",6980662314,"smartsri05@gmail.com","No:101 MKB nagar, mullai street, Vyasarpadi"),
(4,"Sankari",9029410134,"sankaris2000@gmail.com","Door no:78 KVN apartments, Mylapore"),
(5,"Jagan",8012429012,"jagan1985@gmail.com","36/16 srinivasan street, Tnagar"),
(6,"Durga",7832126790,"durga0022@gmail.com","No:53 South phase, Ambattur"),
(7,"Sam",6779071234,"samrockz56@gmail.com","No-5, 12th main road, Vijaya nagar, Velachery"),
(8,"Karthik",7666213456,"karthikj1999@gmail.com","604 3rd street, Kolavizhi amman, Palavakkam"),
(9,"Saranya",8800234512,"saranyashankar@gmail.com","353X, SBI colony 2nd street, Virugambakkam, Chennai-92"),
(10,"Keerthana Devi",7800325612,"keerthuk99@gmail.com","142, 1st main road Rayala nagar, Ramapuram, Chennai-89");

select * from Patient;

create table personal_details(
P_Id int,
Join_date date,
father_name varchar(50),
ward_no bigint,
pt_condition varchar(100),
primary key(P_Id));

insert into personal_details (P_Id, Join_date, father_name, ward_no, pt_condition)
values (1,'2023-12-04',"Ramasamy",101,"Acute leukemia"),
(2,'2024-03-22',"Govindan",78,"Diabetes mellitus"),
(3,'2024-01-06',"Mannar",90,"Bone fracture"),
(4,'2024-03-31',"Gopalan",56,"Viral fever"),
(5,'2023-11-08',"Munusamy",73,"Dengue"),
(6,'2024-02-29',"Palraj",78,"Kidney dialysis"),
(7,'2023-05-27',"Sundaram",102,"Chicken pox"),
(8,'2023-08-10',"Govaradhan",90,"Heart attack"),
(9,'2023-11-11',"Shankar",101,"Jaundice"),
(10,'2023-12-04',"Jithendran",32,"Flu");

select * from personal_details;

create table Doctor_details(
P_Id int,
Doc_Id varchar(10) not null,
Doc_name varchar(50) not null,
Doc_mail varchar(100) not null,
pt_condition varchar(100) not null,
primary key(P_Id));

insert into Doctor_details(P_Id, Doc_Id, Doc_name, Doc_mail, pt_condition)
values(1,"C_5","Gurumurthy","gurum0005@gmail.com","Acute leukemia"),
(2,"B_8","Visalatchi Muthaiah","visalatchimb8@gmail.com","Diabetes mellitus"),
(3,"N_10","Vijay gopalan","drvijaygopalan@gmail.com","Bone fracture"),
(4,"A_9","Aruna Sureshkumar","arunaaruna05@gmail.com","Viral fever"),
(5,"A_9","Aruna Sureshkumar","arunaaruna05@gmail.com","Dengue"),
(6,"N_7","Chandramohan","schandra1979@gmail.com","Kidney dialysis"),
(7,"G_8","Gunaseelan","drgunaseelan@gmail.com","Chicken pox"),
(8,"H_3","Nishanth","nishanthmbbs99@gmail.com","Heart attack"),
(9,"A_9","Aruna Sureshkumar","arunaaruna05@gmail.com","Jaundice"),
(10,"G_8","Gunaseelan","drgunaseelan@gmail.com","Flu");

select * from Doctor_details;

create table Discharge_details(
P_Id int,
Doc_Id varchar(10) not null,
Doc_Name varchar(50) not null,
Join_date date not null,
Join_time time not null,
Dis_date date not null,
Dis_time time not null,
Pt_condition varchar(100) not null,
Bill_Id bigint not null,
primary key(Bill_Id));

insert into Discharge_details(P_Id, Doc_Id, Doc_Name, Join_date, Join_time, Dis_date, Dis_time, Pt_condition, Bill_Id)
values (1,"C_5","Gurumurthy","2023-12-04","09:09:15","2024-03-06","19:00:00","Acute leukemia",183),
(2,"B_8","Visalatchi Muthaiah","2024-03-22","18:35:08","2024-03-24","01:54:00","Diabetes mellitus",599),
(3,"N_10","Vijay gopalan","2024-01-06","23:21:45","2024-01-16","22:45:00","Bone fracture",560),
(4,"A_9","Aruna Sureshkumar","2024-03-31","21:49:35","2024-04-05","12:15:37","Viral fever",612),
(5,"A_9","Aruna Sureshkumar","2023-11-08","06:00:09","2023-11-20","12:07:00","Dengue",273),
(6,"N_7","Chandramohan","2024-02-29","19:00:00","2024-03-27","09:10:00","Kidney dialysis",576),
(7,"G_8","Gunaseelan","2023-05-27","21:45:00","2023-05-30","23:41:45","Chicken pox",242),
(8,"H_3","Nishanth","2023-08-10","12:07:37","2023-08-18","09:09:23","Heart attack",260),
(9,"A_9","Aruna Sureshkumar","2023-11-11","04:00:05","2023-12-24","20:00:00","Jaundice",312),
(10,"G_8","Gunaseelan","2023-12-04","01:50:00","2023-12-09","16:00:09","Flu", 542);

select * from Discharge_details;

create table Bill_details(
P_Id int,
P_name varchar(50) not null,
Ph_no bigint not null,
Doc_Id varchar(50) not null,
ward_no bigint not null,
Bill_Id int not null,
Bill_price varchar(50) not null,
primary key(P_Id));

insert into Bill_details(P_Id, P_name, Ph_no, Doc_Id, ward_no, Bill_Id, Bill_price)
values(1,"Geetha",9087679021,"C_5",101,183,"₹ 2,00,000.00"),
(2,"Ram",8909113421,"B_8",78,599,"₹ 5,008.00"),
(3,"Sripriya",6980662314,"N_10",90,560,"₹ 59,000.00"),
(4,"Sankari",9029410134,"A_9",56,612,"₹ 12,670.00"),
(5,"Jagan",8012429012,"A_9",73,273,"₹ 36,890.00"),
(6,"Durga",7832126790,"N_7",78,576,"₹ 69,770.00"),
(7,"Sam",6779071234,"G_8",102,242,"₹ 11,090.00"),
(8,"Karthik",7666213456,"H_3",90,260,"₹ 34,000.00"),
(9,"Saranya",8800234512,"A_9",101,312,"₹ 56,570.00"),
(10,"Keerthana Devi",7800325612,"G_8",32,542,"₹ 9,800.00");

select * from Bill_details;



