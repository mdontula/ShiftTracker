CREATE database and TABLE COMMANDS FOR "SHIFT TRACKER"
---------------------------------------------------

create database shifttracker;


create table sstuser(user_name varchar(255),user_password varchar(255));
insert into sstuser(user_name,user_password) values ("sst_user","sst_user");

create table sstemployee(empId varchar(255),empName varchar(255),empProject varchar(255),empStream varchar(255));
insert into sstemployee(empId,empName,empProject,empStream) values ("914","AbdulMazeed","SST","SNB");
insert into sstemployee(empId,empName,empProject,empStream) values ("764","MaheshDonthula","SST","SNB");
insert into sstemployee(empId,empName,empProject,empStream) values ("1030","Sowmya","SST","SNB");
insert into sstemployee(empId,empName,empProject,empStream) values ("1475","Rohit","SST","SNB");
insert into sstemployee(empId,empName,empProject,empStream) values ("0902","Chaitanya","SST","HUB");
insert into sstemployee(empId,empName,empProject,empStream) values ("1459","Safiya","SST","HUB");
insert into sstemployee(empId,empName,empProject,empStream) values ("111","Venkat","SST","SNB");
insert into sstemployee(empId,empName,empProject,empStream) values ("000","Kazim","SST","SST");
insert into sstemployee(empId,empName,empProject,empStream) values ("222","Ravi","SST","Platform");
insert into sstemployee(empId,empName,empProject,empStream) values ("333","Kiran","SST","Platform");
