drop database if exists vrtic;

create database vrtic;

use vrtic;


create table odgojna_skupina(
sifra int not null primary key auto_increment,
naziv varchar (20) not null,
odgajateljica int,
dijete int

);


create table dijete (
sifra int not null primary key auto_increment,
ime varchar (20) not null,
prezime varchar(20) not null
);


create table odgajateljica(
sifra int not null primary key auto_increment,
ime varchar (20) not null,
prezime varchar(20) not null

);

create table strucna_sprema(
sifra int primary key not null auto_increment,
naziv varchar(20) not null,
odgajateljica int
);



alter table odgojna_skupina add foreign key (odgajateljica) references odgajateljica(sifra);
alter table odgojna_skupina add foreign key (dijete) references dijete(sifra);

alter table strucna_sprema add foreign key (odgajateljica) references odgajateljica(sifra);







#alter table dijete add foreign key odgojna_skupina references odgojna_skupina (sifra);

#alter table strucna_sprema add foreign key odgajateljica references odgajateljica (sifra);

#alter table odgojna_skupina add foreign key odgajateljica references odgajateljica (sifra);


