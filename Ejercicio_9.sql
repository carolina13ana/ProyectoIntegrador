create database pelucanina

create table Dueno(
            DNI int not null,
            Nombre varchar(30),
            Apellido varchar(30),
            Telefono int,
            Direccion varchar(50),
            constraint DNI_dueno_pk 
            primary key (DNI)
            )
            
alter table perro
add constraint DNI_dueno
foreign key (DNI_dueno) 
references Dueno(DNI) 
           
            
create table perro(ID_Perro int not null auto_increment primary key,
			        Nombre varchar(30),
                    Fecha_nac datetime,
					Sexo varchar(20),
                    DNI_dueno int not NULL)
		
                    
alter table perro
add constraint fk2_Dueno foreign key (DNI_dueno) references Dueno (DNI) on delete no action 
on update no action 



insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ('33453877','Sergio','Martinez','424513', 'Rio Negro 73')
insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ('41522653','Celeste','Murua','423999', 'Salta 644')
insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ('50502643','Rosa','Paz','455987','Las flores 231')

insert into perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values ('01','Toby','2020-06-20','Macho','33453877')
insert into perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values ('02','Lolo','2021-03-13','Macho','41522653')
insert into perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values ('03','Lila','2022-01-3','Hembra','50502643')


select*from perro 

drop table dueno
drop table perro 

alter table Dueno 

update dueno set Direccion="Libertad 123" where DNI=33453877

select*from dueno

