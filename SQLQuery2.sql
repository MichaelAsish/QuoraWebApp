use QuaraDb
go
 
insert into Users values
('admin@gmail.com','34550715062af006ac4fab288de67ecb44793c3a05c475227241535f6ef7a81b','Administrator',1)
go
insert into Users values
('michael@gmail.com','d30bdd17f8d585678fa3f49906f9175332345a6526b796a5b726e0c4c953d27f','Michael',1)
go
insert into Users values
('vijwil@gmail.com','1f3ea4dbb90bc4e0c4a063af8be7f6921dd8c1c35706b1682d05494691038056','vijaya',0)
go
select * from Users

insert into Categories values('Asp.net')
insert into Categories values('Asp.net Mvc')
insert into Categories values('Asp.net Core')
select * from Categories


insert into Questions values
('What is MVC?','2020-08-05 10:30 am',3,1,0,0,0)
insert into Questions values
('What is Difference between core and MVC?','2020-08-05 10:30 am',2,3,0,0,0)
select * from Questions