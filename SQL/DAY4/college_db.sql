create database college_db;

use college_db;

CREATE TABLE department (
	department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(30) NOT NULL,
    department_cartegory VARCHAR(20),
    department_count INT ,
    status boolean default TRUE
    );
    
    
    insert into department (department_name,department_cartegory,department_count) Values("java","bs",21);
	insert into department (department_name,department_cartegory,department_count) Values(".net","fs",22);
    insert into department (department_name,department_cartegory,department_count) Values("python","fs",23);
    insert into department (department_name,department_cartegory,department_count) Values("mern","tw",24);

    
    
    select * from department;
    
    select department_name,department_cartegory from department ;
    
    
    select * from department where department_count > 23;
    
    select distinct department_cartegory, status from department;
    
    select department_cartegory as "department of the category" from department;
    
    
    select * from department where department_count between 21 and 23;
    
	select * from department where department_name in (".net");
    
  	select * from department where department_name like "p%";
  
  	select * from department where department_name like "%n";
    
	select * from department where department_name like "%a%";
 
   	select * from department where department_name is not NULL;
    
	select * from department order by department_count DESC;

 	select * from department order by department_count ASC;
    
    select count(*) from department ;
  
    select avg(department_count) from department where department_name ="mern";
   
     select sum(department_count) as "total sum" from department ;
     
     select max(department_count) as "total sum" from department ;
     
     
  
    
    

        
    
    
    
    
