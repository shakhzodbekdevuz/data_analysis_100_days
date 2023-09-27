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

