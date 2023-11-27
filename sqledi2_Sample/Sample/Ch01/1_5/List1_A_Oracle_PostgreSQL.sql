--Oracle PostgreSQL
ALTER TABLE Sohin RENAME TO Shohin;


postgres=# create table Jyushoroku (
toroku_bango INteger not null,
namae varCHAr(128) not null,
jyusho varchar(256) not null,
tel_no char(10),
mail_address char(20),
primary key(toroku_bango) );

create table Jyushoroku (
toroku_bango INteger not null,
namae varCHAr(128) not null,
jyusho varchar(256) not null,
tel_no char(10),
mail_address char(20),
nyubin_bango varChar(8) not null,
primary key(toroku_bango) );