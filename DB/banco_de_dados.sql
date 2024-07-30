create database connectMYSQL;
use connectMYSQL;

create table doenca(
id_d int auto_increment not null,
Descricao_doenca varchar(60),
primary key (id_d)
);
create table sintoma(
id_s int auto_increment not null,
Descricao_sintoma varchar(60),
primary key (id_s) 
);

create table pesquisa(
id_p INT AUTO_INCREMENT NOT NULL,
id_s INT NOT NULL,
id_d INT NOT NULL,
PRIMARY KEY (id_p),
FOREIGN KEY (id_s) REFERENCES sintoma (id_s),
FOREIGN KEY (id_d) REFERENCES doenca (id_d)
);

create table tratamento(
id_t int auto_increment not null,
tratamentos varchar(255) not null,
id_s int not null,
id_d int not null,
id_p int not null,
foreign key (id_p) references pesquisa (id_p),
foreign key (id_s) references sintoma (id_s),
foreign key (id_d) references doenca (id_d),
primary key (id_t)
);