create database bank_mgt_sys;
use bank_mgt_sys;
drop database bank_mgt_sys;

-- create tables  for Bank Management System 

create table customers(
Customer_ID int primary key auto_increment,
Name varchar(30),
Address varchar(60),
Phone_No varchar(20), 
Email varchar(40),
Date_of_Birth date);

show tables;
select*from customers;

create table accounts
(Account_No int primary key auto_increment,
Customer_ID int,
Foreign key (Customer_ID) references customers(Customer_ID) on delete cascade,
Account_type varchar(20),
Balance decimal(10,2),
Opening_date date); 

alter table accounts add column 
(Branch_ID int,
foreign key(Branch_ID) references branch(Branch_ID));-- (add new column branch_id as foregin key)
select*from accounts;

create table transactions
(Transaction_ID int primary key auto_increment,
Account_No int,
foreign key (Account_No) references accounts(Account_No) on delete cascade,
Transaction_Type varchar(20),
Amount decimal(10,2),
Transaction_Date date,
Description varchar(20));

select*from transactions;

create table loan
(Loan_ID varchar(20) primary key,
Customer_ID int,
foreign key(Customer_ID)references customers(Customer_ID) on delete set null,
Loan_Amount decimal(10,2),
Interest_Rate decimal(5,2),
Start_Date date,
End_Date date);
select*from loan;

create table branch
(Branch_ID int primary key auto_increment,
Branch_Name varchar(40),
Branch_Address varchar(90),
Phone_No varchar(20));
select*from branch;

create table employee
(Employee_ID int primary key auto_increment,
Branch_ID int,
foreign key (Branch_ID)references branch(Branch_ID)on delete set null,
Name varchar(30), 
Position varchar(20));
select*from employee;

insert into customers (Customer_ID, Name,Address,Phone_No,Email,Date_of_Birth) 
values(1,"John Smith","No.12 Gandhi Nagar T.Nagar Chennai - 600017","+919876543210","john.smith@email.com","1985-03-15"),
(2,"Emily Johnson","45 Kamarajar Salai Adyar Chennai - 600020","+918765432109","emily.j@email.com","1990-07-22"),
(3,"Michael Brown","78 Race Course Road Coimbatore - 641018","+917654321098","michael.b@email.com","1982-11-30"),
(4,"Sarah Davis","3/45 East Coast Road Thiruvanmiyur Chennai - 600041","+916543210987","sarah.d@email.com","1995-05-18"),
(5,"Robert Wilson","502 Anna Nagar Madurai - 625020","+915432109876","robert.w@email.com","1978-09-12"),
(6,"Jennifer Lee","34 VOC Street Tuticorin - 628002","+914321098765","jennifer.l@email.com","1989-01-25"),
(7,"David Miller","9 Rockins Road Trichy - 620001","+913210987654","david.m@email.com","1992-04-05"),
(8,"Lisa Taylor","56 Bharathi Street Salem - 636001","+912109876543","lisa.t@email.com","1987-12-08"),
(9,"James Anderson","23 Beach Road Kanyakumari - 629702","+919988776655","james.a@email.com","1975-06-19"),
(10,"Maria Garcia","401 Mount Road Chennai - 600002","+918877665544","maria.g@email.com","1993-08-14"),
(11,"William Martinez","78 Sivananda Road Tirunelveli - 627001","+917766554433","william.m@email.com","1980-02-28"),
(12,"Jessica Robinson","15 Railway Station Road Erode - 638001","+916655443322","jessica.r@email.com","1991-10-11"),
(13,"Thomas Clark","302 Big Bazaar Street Thanjavur - 613001","+915544332211","thomas.c@email.com","1984-07-03"),
(14,"Amanda Rodriguez","5 Temple Street Rameswaram - 623526","+914433221100","amanda.r@email.com","1996-09-27"),
(15,"Christopher Lewis","89 Collector Office Road Vellore - 632004","+919876501234","christopher.l@email.com","1979-04-16"),
(16,"Stephanie Walker","67 Medical College Road Tiruchirappalli - 620001","+918765412345","stephanie.w@email.com","1988-11-09"),
(17,"Daniel Hall","43 Court Road Dindigul - 624001","+917654323456","daniel.h@email.com","1994-05-22"),
(18,"Nicole Young","21 Bazaar Street Karaikudi - 630001","+916543234567","nicole.y@email.com","1983-12-15"),
(19,"Kevin Allen","78 Hospital Road Nagercoil - 629001","+915434545678","kevin.a@email.com","1977-08-08"),
(20,"Ashley King","32 College Road Cuddalore - 607001","+914325656789","ashley.k@email.com","1990-03-31"),
(21,"Brian Wright","109 Bus Stand Road Ooty - 643001","+913216767890","brian.w@email.com","1986-10-24"),
(22,"Samantha Scott","45 Market Road Hosur - 635109","+912107878901","samantha.s@email.com","1997-01-17"),
(23,"Matthew Green","78 Lake View Road Kodaikanal - 624101","+919988009911","matthew.g@email.com","1981-06-20"),
(24,"Elizabeth Adams","56 School Road Pollachi - 642001","+918877119922","elizabeth.a@email.com","1992-09-13"),
(25,"Richard Baker","34 Post Office Road Neyveli - 607801","+917766229933","richard.b@email.com","1976-04-26"),
(26,"Megan Nelson","12 Park Road Mayiladuthurai - 609001","+916655339944","megan.n@email.com","1989-07-19"),
(27,"Joseph Carter","90 Hospital Road Tiruppur - 641604","+915444449955","joseph.c@email.com","1995-02-12"),
(28,"Rebecca Mitchell","67 College Street Kanchipuram - 631501","+914433559966","rebecca.m@email.com","1984-05-05"),
(29,"Charles Perez","45 Temple Road Chidambaram - 608001","+919876123456","charles.p@email.com","1978-12-28"),
(30,"Lauren Roberts","23 Railway Road Virudhunagar - 626001","+918765234567","lauren.r@email.com","1991-08-21"),
(31,"Andrew Turner","78 Market Street Sivakasi - 626123","+917656345678","andrew.t@email.com","1987-03-14"),
(32,"Victoria Phillips","56 Church Road Theni - 625531","+916547456789","victoria.p@email.com","1996-10-07"),
(33,"Ryan Campbell","34 Main Road Pudukkottai - 622001","+915438567890","ryan.c@email.com","1980-01-30"),
(34,"Christina Parker","12 Hospital Road Ramanathapuram - 623501","+914329678901","christina.p@email.com","1993-06-23"),
(35,"Joshua Evans","90 College Road Namakkal - 637001","+913210789012","joshua.e@email.com","1979-11-16"),
(36,"Rachel Edwards","67 Bazaar Road Karur - 639001","+912101890123","rachel.e@email.com","1988-04-09"),
(37,"Nicholas Collins","45 Post Office Road Dharmapuri - 636701","+919988770011","nicholas.c@email.com","1994-09-02"),
(38,"Heather Stewart","23 School Road Krishnagiri - 635001","+918877661122","heather.s@email.com","1983-12-25"),
(39,"Justin Sanchez","78 Temple Street Villupuram - 605602","+917766552233","justin.s@email.com","1977-07-18"),
(40,"Tiffany Morris","56 Hospital Road Tiruvannamalai - 606601","+916655443344","tiffany.m@email.com","1990-02-11"),
(41,"Brandon Rogers","34 College Road Nagapattinam - 611001","+915544334455","brandon.r@email.com","1986-09-04"),
(42,"Amber Reed","12 Market Road Perambalur - 621212","+914433225566","amber.r@email.com","1997-04-27"),
(43,"Gary Cook","90 Bus Stand Road Ariyalur - 621704","+919876543211","gary.c@email.com","1981-11-20"),
(44,"Kayla Morgan","67 Railway Road Kallakurichi - 606202","+918765432100","kayla.m@email.com","1992-06-13"),
(45,"Eric Bell","45 Main Road Tenkasi - 627811","+917654321099","eric.b@email.com","1976-01-06"),
(46,"Danielle Murphy","23 Hospital Street Sivaganga - 630561","+916543210988","danielle.m@email.com","1989-08-29"),
(47,"Timothy Bailey","78 College Road Tiruvarur - 610001","+915432109877","timothy.b@email.com","1995-03-22"),
(48,"Crystal Cooper","56 Temple Road Nilgiris - 643001","+914321098766","crystal.c@email.com","1984-10-15"),
(49,"Jeffrey Richardson","34 Market Road Chengalpattu - 603001","+913210987655","jeffrey.r@email.com","1978-05-08"),
(50,"Michelle Cox","12 Bus Stand Road Ranipet - 632401","+912109876544","michelle.c@email.com","1991-12-01");

insert into accounts(Account_No,Customer_ID,Account_type,Balance,Opening_date) 
values(10001,1,"Savings",5000.00,"2020-01-15"),
(10002,2,"Current",2500.00,"2020-02-20"),
(10003,3,"Loan",10000.00,"2020-03-10"),
(10004,4,"Savings",7500.00,"2020-04-05"),
(10005,5,"Current",3000.00,"2020-05-12"),
(10006,6,"Loan",15000.00,"2020-06-18"),
(10007,7,"Savings",6000.00,"2020-07-22"),
(10008,8,"Current",4000.00,"2020-08-30"),
(10009,9,"Loan",20000.00,"2020-09-14"),
(10010,10,"Savings",8500.00,"2020-10-25"),
(10011,11,"Current",3500.00,"2020-11-03"),
(10012,12,"Loan",12000.00,"2020-12-09"),
(10013,13,"Savings",7000.00,"2021-01-17"),
(10014,14,"Current",4500.00,"2021-02-21"),
(10015,15,"Loan",18000.00,"2021-03-28"),
(10016,16,"Savings",5500.00,"2021-04-05"),
(10017,17,"Current",5000.00,"2021-05-11"),
(10018,18,"Loan",22000.00,"2021-06-16"),
(10019,19,"Savings",9000.00,"2021-07-20"),
(10020,20,"Current",6000.00,"2021-08-24"),
(10021,21,"Savings",6500.00,"2021-09-29"),
(10022,22,"Current",7000.00,"2021-10-03"),
(10023,23,"Loan",25000.00,"2021-11-08"),
(10024,24,"Savings",8000.00,"2021-12-12"),
(10025,25,"Current",8000.00,"2022-01-18"),
(10026,26,"Loan",30000.00,"2022-02-22"),
(10027,27,"Savings",9500.00,"2022-03-28"),
(10028,28,"Current",9000.00,"2022-04-01"),
(10029,29,"Loan",35000.00,"2022-05-06"),
(10030,30,"Savings",10000.00,"2022-06-10"),
(10031,31,"Current",10000.00,"2022-07-15"),
(10032,32,"Loan",40000.00,"2022-08-19"),
(10033,33,"Savings",11000.00,"2022-09-23"),
(10034,34,"Current",11000.00,"2022-10-28"),
(10035,35,"Loan",45000.00,"2022-11-01"),
(10036,36,"Savings",12000.00,"2022-12-06"),
(10037,37,"Current",12000.00,"2023-01-10"),
(10038,38,"Loan",50000.00,"2023-02-14"),
(10039,39,"Savings",13000.00,"2023-03-21"),
(10040,40,"Current",13000.00,"2023-04-25"),
(10041,41,"Savings",14000.00,"2023-05-30"),
(10042,42,"Current",14000.00,"2023-06-03"),
(10043,43,"Loan",55000.00,"2023-07-08"),
(10044,44,"Savings",15000.00,"2023-08-12"),
(10045,45,"Current",15000.00,"2023-09-16"),
(10046,46,"Loan",60000.00,"2023-10-21"),
(10047,47,"Savings",16000.00,"2023-11-25"),
(10048,48,"Current",16000.00,"2023-12-30"),
(10049,49,"Loan",65000.00,"2024-01-03"),
(10050,50,"Savings",17000.00,"2024-02-07");

insert into transactions(Transaction_ID,Account_No,Transaction_Type,Amount,Transaction_Date,Description)
values(1,10001,"Deposit",1000.00,"2020-01-16","Initial deposit"),
(2,10002,"Deposit",500.00,"2020-02-21","Initial deposit"),
(3,10003,"Withdrawal",200.00,"2020-03-11","Loan disbursement"),
(4,10004,"Deposit",1500.00,"2020-04-06","Initial deposit"),
(5,10005,"Deposit",600.00,"2020-05-13","Initial deposit"),
(6,10006,"Withdrawal",300.00,"2020-06-19","Loan disbursement"),
(7,10007,"Deposit",1200.00,"2020-07-23","Initial deposit"),
(8,10008,"Deposit",800.00,"2020-08-31","Initial deposit"),
(9,10009,"Withdrawal",400.00,"2020-09-15","Loan disbursement"),
(10,10010,"Deposit",1700.00,"2020-10-26","Initial deposit"),
(11,10011,"Deposit",700.00,"2020-11-04","Initial deposit"),
(12,10012,"Withdrawal",240.00,"2020-12-10","Loan disbursement"),
(13,10013,"Deposit",1400.00,"2021-01-18","Initial deposit"),
(14,10014,"Deposit",900.00,"2021-02-22","Initial deposit"),
(15,10015,"Withdrawal",360.00,"2021-03-29","Loan disbursement"),
(16,10016,"Deposit",1100.00,"2021-04-06","Initial deposit"),
(17,10017,"Deposit",1000.00,"2021-05-12","Initial deposit"),
(18,10018,"Withdrawal",440.00,"2021-06-17","Loan disbursement"),
(19,10019,"Deposit",1800.00,"2021-07-21","Initial deposit"),
(20,10020,"Deposit",1200.00,"2021-08-25","Initial deposit"),
(21,10021,"Deposit",1300.00,"2021-09-30","Initial deposit"),
(22,10022,"Deposit",1400.00,"2021-10-04","Initial deposit"),
(23,10023,"Withdrawal",500.00,"2021-11-09","Loan disbursement"),
(24,10024,"Deposit",1600.00,"2021-12-13","Initial deposit"),
(25,10025,"Deposit",1600.00,"2022-01-19","Initial deposit"),
(26,10026,"Withdrawal",600.00,"2022-02-23","Loan disbursement"),
(27,10027,"Deposit",1900.00,"2022-03-29","Initial deposit"),
(28,10028,"Deposit",1800.00,"2022-04-02","Initial deposit"),
(29,10029,"Withdrawal",700.00,"2022-05-07","Loan disbursement"),
(30,10030,"Deposit",2000.00,"2022-06-11","Initial deposit"),
(31,10031,"Deposit",2000.00,"2022-07-16","Initial deposit"),
(32,10032,"Withdrawal",800.00,"2022-08-20","Loan disbursement"),
(33,10033,"Deposit",2200.00,"2022-09-24","Initial deposit"),
(34,10034,"Deposit",2200.00,"2022-10-29","Initial deposit"),
(35,10035,"Withdrawal",900.00,"2022-11-02","Loan disbursement"),
(36,10036,"Deposit",2400.00,"2022-12-07","Initial deposit"),
(37,10037,"Deposit",2400.00,"2023-01-11","Initial deposit"),
(38,10038,"Withdrawal",1000.00,"2023-02-15","Loan disbursement"),
(39,10039,"Deposit",2600.00,"2023-03-22","Initial deposit"),
(40,10040,"Deposit",2600.00,"2023-04-26","Initial deposit"),
(41,10041,"Deposit",2800.00,"2023-05-31","Initial deposit"),
(42,10042,"Deposit",2800.00,"2023-06-04","Initial deposit"),
(43,10043,"Withdrawal",1100.00,"2023-07-09","Loan disbursement"),
(44,10044,"Deposit",3000.00,"2023-08-13","Initial deposit"),
(45,10045,"Deposit",3000.00,"2023-09-17","Initial deposit"),
(46,10046,"Withdrawal",1200.00,"2023-10-22","Loan disbursement"),
(47,10047,"Deposit",3200.00,"2023-11-26","Initial deposit"),
(48,10048,"Deposit",3200.00,"2023-12-31","Initial deposit"),
(49,10049,"Withdrawal",1300.00,"2024-01-04","Loan disbursement"),
(50,10050,"Deposit",3400.00,"2024-02-08","Initial deposit");

insert into loan(Loan_ID,Customer_ID,Loan_Amount,Interest_Rate,Start_Date,End_Date)
values ("L1001",1,15000.00,5.25,"2020-03-15","2025-03-15"),
("L1002",3,25000.00,6.00,"2020-04-10","2025-04-10"),
("L1003",6,35000.00,5.75,"2020-06-20","2025-06-20"),
("L1004",9,20000.00,6.25,"2020-09-15","2025-09-15"),
("L1005",12,30000.00,5.50,"2020-12-10","2025-12-10"),
("L1006",15,40000.00,6.00,"2021-03-30","2026-03-30"),
("L1007",18,45000.00,5.75,"2021-06-17","2026-06-17"),
("L1008",21,28000.00,6.50,"2021-09-30","2026-09-30"),
("L1009",23,32000.00,5.25,"2021-11-10","2026-11-10"),
("L1010",26,38000.00,6.00,"2022-02-23","2027-02-23"),
("L1011",29,42000.00,5.50,"2022-05-08","2027-05-08"),
("L1012",32,50000.00,6.25,"2022-08-21","2027-08-21"),
("L1013",35,55000.00,5.75,"2022-11-03","2027-11-03"),
("L1014",38,48000.00,6.00,"2023-02-16","2028-02-16"),
("L1015",41,60000.00,5.25,"2023-05-31","2028-05-31"),
("L1016",43,52000.00,6.50,"2023-07-10","2028-07-10"),
("L1017",46,58000.00,5.75,"2023-10-23","2028-10-23"),
("L1018",49,65000.00,6.00,"2024-01-05","2029-01-05"),
("L1019",2,18000.00,5.50,"2020-05-20","2025-05-20"),
("L1020",4,22000.00,6.25,"2020-07-15","2025-07-15"),
("L1021",5,19000.00,5.75,"2020-08-12","2025-08-12"),
("L1022",7,27000.00,6.00,"2020-10-25","2025-10-25"),
("L1023",8,23000.00,5.25,"2020-11-30","2025-11-30"),
("L1024",10,31000.00,6.50,"2021-01-14","2026-01-14"),
("L1025",11,29000.00,5.75,"2021-02-18","2026-02-18"),
("L1026",13,33000.00,6.00,"2021-04-22","2026-04-22"),
("L1027",14,37000.00,5.25,"2021-05-27","2026-05-27"),
("L1028",16,41000.00,6.25,"2021-07-30","2026-07-30"),
("L1029",17,39000.00,5.50,"2021-09-03","2026-09-03"),
("L1030",19,44000.00,6.00,"2021-10-08","2026-10-08"),
("L1031",20,46000.00,5.75,"2021-12-11","2026-12-11"),
("L1032",22,51000.00,6.25,"2022-01-15","2027-01-15"),
("L1033",24,49000.00,5.50,"2022-03-20","2027-03-20"),
("L1034",25,53000.00,6.00,"2022-04-24","2027-04-24"),
("L1035",27,56000.00,5.25,"2022-06-28","2027-06-28"),
("L1036",28,54000.00,6.50,"2022-08-01","2027-08-01"),
("L1037",30,59000.00,5.75,"2022-09-05","2027-09-05"),
("L1038",31,61000.00,6.00,"2022-10-10","2027-10-10"),
("L1039",33,63000.00,5.25,"2022-12-13","2027-12-13"),
("L1040",34,64000.00,6.25,"2023-01-17","2028-01-17"),
("L1041",36,66000.00,5.50,"2023-03-22","2028-03-22"),
("L1042",37,67000.00,6.00,"2023-04-26","2028-04-26"),
("L1043",39,69000.00,5.75,"2023-06-30","2028-06-30"),
("L1044",40,71000.00,6.25,"2023-08-03","2028-08-03"),
("L1045",42,72000.00,5.50,"2023-09-07","2028-09-07"),
("L1046",44,74000.00,6.00,"2023-11-10","2028-11-10"),
("L1047",45,75000.00,5.75,"2023-12-15","2028-12-15"),
("L1048",47,77000.00,6.25,"2024-02-18","2029-02-18"),
("L1049",48,78000.00,5.50,"2024-03-24","2029-03-24"),
("L1050",50,80000.00,6.00,"2024-04-28","2029-04-28");

insert into branch(Branch_ID,Branch_Name,Branch_Address,Phone_No)
values(1,"Chennai Main Branch","No.100 Anna Salai Chennai - 600002","+919876543210"),
(2,"Coimbatore North Branch","45 DB Road RS Puram Coimbatore - 641002","+918765432109"),
(3,"Madurai South Branch","78 West Perumal Maistry Street Madurai - 625001","+917654321098"),
(4,"Trichy East Branch","3/12 Williams Road Cantonment Tiruchirappalli - 620001","+916543210987"),
(5,"Salem West Branch","502 Fort Main Road Salem - 636001","+915432109876"),
(6,"Tirunelveli Downtown Branch","34 Tiruchendur Road Tirunelveli - 627001","+914321098765"),
(7,"Erode Uptown Branch","9 Brough Road Erode - 638001","+913210987654"),
(8,"Vellore Midtown Branch","56 Officer's Line Vellore - 632001","+912109876543"),
(9,"Tuticorin Riverside Branch","23 Harbour Road Thoothukudi - 628001","+919988776655"),
(10,"Ooty Hillside Branch","401 Charring Cross Ooty - 643001","+918877665544");

insert into employee(Employee_ID,Branch_ID,Name,Position) 
values(101,1,"David Johnson","Manager"),
(102,1,"Lisa Williams","Teller"),
(103,1,"Mark Thompson","Teller"),
(104,2,"Karen Davis","Manager"),
(105,2,"Steven Miller","Teller"),
(106,2,"Jennifer Wilson","Teller"),
(107,3,"Paul Moore","Manager"),
(108,3,"Amanda Taylor","Teller"),
(109,3,"Kevin Anderson","Teller"),
(110,4,"Sarah Thomas","Manager"),
(111,4,"Jason Jackson","Teller"),
(112,4,"Michelle White","Teller"),
(113,5,"Brian Harris","Manager"),
(114,5,"Angela Martin","Teller"),
(115,5,"Eric Garcia","Teller"),
(116,6,"Melissa Martinez","Manager"),
(117,6,"Timothy Robinson","Teller"),
(118,6,"Heather Clark","Teller"),
(119,7,"Jeffrey Rodriguez","Manager"),
(120,7,"Rebecca Lewis","Teller"),
(121,7,"Scott Walker","Teller"),
(122,8,"Laura Hall","Manager"),
(123,8,"Patrick Young","Teller");

-- Stored Procedure--

 -- Customer Account Balance--
 
 delimiter //
 create procedure Cust_account_balance(in acc_balance int)
 begin
 select Account_No,Account_type,Balance,Branch_ID from accounts
 where Customer_ID=acc_balance;
 end //
 delimiter ;
 
 call Cust_account_balance(10);
 
 -- Apply Interest Rate --

 delimiter //
 create procedure Apply_Interest_rate(in IN_rate decimal(5,2))
 begin 
 update accounts set Balance= round(Balance * (1+ IN_rate/100/12)/2)
 where Account_type='Savings';
 end //
 delimiter ;
 
 call Apply_Interest_rate(6.25);
 select * from accounts;
 drop procedure Apply_Interest_rate;
 
 
 -- Loan EMI Calculator --
 
 delimiter //
 create procedure EMI_calculator(in loanid varchar(10))
 begin
 select Loan_Amount,Interest_Rate,round((Loan_Amount*Interest_Rate/12/100),2) as Monthly_EMI
 from loan where Loan_ID=loanid;
 end //
 delimiter ;
 
 call EMI_calculator('L1040');
 drop procedure EMI_calculator;
 
 -- Daliy Transaction Summary--
 
 delimiter //
 create procedure Daliy_trans(in trans_date date)
 begin
 select Transaction_Type,count(*)as total_count, sum(amount) as total_amount from transactions
 where date(Transaction_Date)=trans_date group by Transaction_Type;
 end //
 delimiter ;
 
 call Daliy_trans('2020-10-26');
 drop procedure Daliy_trans;
 
 -- Customer Search Summary ---

delimiter //
create procedure Customer_search (in search_name varchar(30))
begin
select * from customers
where name like concat('%',search_name,'%')or Phone_No like concat('%',search_name,'%');
end //
delimiter ;

call Customer_search("Brian Wright");
call Customer_search("+914321098765");

-- Branch Report ---

delimiter //
create procedure branch_report()
begin
select br.Branch_ID,br.Branch_Name,
count(distinct acc.Account_No) as account, sum(acc.Balance) as total_balance from branch br 
left join accounts acc on br.Branch_ID = acc.Branch_ID
group by br.Branch_ID,br.Branch_Name
;
end //
delimiter ;

call branch_report();
drop procedure branch_report;
--------------------------------------------------------------
-- Views --

select * from Active_loan_customer;

select * from Acc_balance;

select * from Mont_Trans;
 
select * from Branch_perf;

-- Stored Procedure --

 call Cust_account_balance(10);
 
call Apply_Interest_rate(6.25);
 
call EMI_calculator('L1040');

call Daliy_trans('2020-10-26');

call Customer_search("Brian Wright");
call Customer_search("+914321098765");

call branch_report();