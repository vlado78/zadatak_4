drop database if exist vrtic;

create database vrtic;
 
use vrtic;

create table skupina(
sifra int not null primary key auto_increment,
naziv varchar(20)


);

table table dijeca(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime(varchar(20) not null,
skupina int

);

create table odgajateljica(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezime(varchar(20) not null
strucna sprema int,
skupina int
);

create table strucna_sprema (
sifra int not null primary key auto_increment,
naziv varchar(20)
);


alter table odgajateljica add foreign key strucna_sprema references strucna_sprema(sifra);

alter table skupina add foreign key dijeca references dijeca(sifra);

alter table skupina add foreign key odgajateljica references odgajateljica(sifra);
