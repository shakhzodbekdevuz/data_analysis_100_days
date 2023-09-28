use W3Resource
/*w3resourse 1-mavzu 33 ta mashqlar
Misol-1*/
select * from  Inventory.Salesman

/*Misol-2*/
select 'This is SQL Exercise, Practice and Solution'

/*Misol-3*/
select 1,2,3

/*Misol-4*/
select 10+15

/*Misol-5*/
select 10*4+23

/*Misol-6*/
select name,commission from Inventory.Salesman

/*Misol-7*/
select ord_date,salesman_id,ord_no, purch_amt from Inventory.Orders

/*Misol-8*/
select distinct salesman_id from Inventory.Orders

/*Misol-9*/
select name, city from Inventory.Salesman
where city='Paris'

/*Misol-10*/
select customer_id,cust_name,city,grade,salesman_id from Inventory.Customer
where grade=200

/*Misol-11*/
select * from Inventory.Orders 
where salesman_id=5001

/*Misol-12*/
select year, subject, winner from dbo.nobel_win
where year=1970

/*Misol-13*/
select * from dbo.nobel_win
where subject='Literature' and year=1971

/*Misol-14*/
select * from dbo.nobel_win
where winner='Dennis Gabor'

/*Misol-15*/
select * from dbo.nobel_win
where subject='Physics' and year>=1950

/*Misol-16*/
select * from dbo.nobel_win
where subject='Chemistry' and year>=1965 and year<=1975

/*Misol-17*/
select * from dbo.nobel_win
where year>1972 and (winner in ('Menachem Begin','Yitzhak Rabin') )

/*Misol-18*/
select * from dbo.nobel_win
where winner like 'Louis%'

/*Misol-19*/
select * from dbo.nobel_win
where (subject='Physics' and year=1970) or (subject='Economics' and year=1971)

/*Misol-20*/
select * from dbo.nobel_win
where year=1970 and subject not in ('Physiology','Economics')

/*Misol-21*/
select * from dbo.nobel_win
where (subject ='Physiology' AND year<1971) or (subject ='Peace' AND year>=1974)

/*Misol-22*/
select * from dbo.nobel_win
where winner='Johannes Georg Bednorz'

/*Misol-23*/
select * from dbo.nobel_win
where subject not like 'P%'
 ORDER BY year DESC, winner;





/*Boolean type Misollar*/
/*Misol-1*/
select customer_id,cust_name,city from Inventory.Customer
where grade>100

/*Misol-2*/
select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
where city='New York' and grade>100

/*Misol-3*/
select * from Inventory.Customer
where city='New York' or grade>100

/*Misol-4*/
select * from Inventory.Customer
where city='New York' or grade<=100
/*Misol-5*/
select * from Inventory.Customer
where not (city='New York' or grade>100)

/*Misol-6*/
select * from Inventory.Orders
where not (ord_date='2012-09-10' and salesman_id>5005 or purch_amt>1000)

/*Misol-7*/
select salesman_id, name, city,  commission from Inventory.Salesman
where commission between 0.10 and 0.12

/*Misol-8*/
select * from Inventory.Orders
where purch_amt<200 or  not(ord_date>='2012-02-10' and customer_id<3009)

/*Misol-9*/
select * from Inventory.Orders
where (ord_date!='2012-08-17' or customer_id>3005 and purch_amt<1000)
/*Misol-10*/
SELECT ord_no,purch_amt, 
(100*purch_amt)/6000 AS "Achieved %", 
(100*(6000-purch_amt)/6000) AS "Unachieved %" 
FROM  Inventory.Orders 
WHERE (100*purch_amt)/6000>50;

/*Misol-11*/
select emp_idno,emp_fname,emp_lname, emp_dept from emp_details 
where   emp_lname in ('Dosni','Mardy')

/*Misol-12*/
select * from emp_details
where emp_dept=47 or emp_dept=63
order by emp_dept
