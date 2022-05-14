create table usuario(
id_usuario number,
mail VARCHAR2(30),
PRIMARY KEY(id_usuario)
);

insert into usuario(id_usuario, mail)
values (1, 'usuario01@hotmail.com');
insert into usuario(id_usuario, mail)
values (2, 'usuario02@gmail.com');
insert into usuario(id_usuario, mail)
values (3, 'usuario03@gmail.com');
insert into usuario(id_usuario, mail)
values (4, 'usuario04@hotmail.com');
insert into usuario(id_usuario, mail)
values (2, 'usuario02@gmail.com');
insert into usuario(id_usuario, mail)
values (2, 'usuario02@gmail.com');
insert into usuario(id_usuario, mail)
values (2, 'usuario02@gmail.com');
insert into usuario(id_usuario, mail)
values (2, 'usuario02@gmail.com');

create table post(
id_post number,
id_usuario number,
titulo VARCHAR2(50),
fecha DATE,
PRIMARY KEY(id_post),
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

insert into post(id_post,id_usuario, titulo, fecha)
values (1, 1, 'Post 1: Esto es malo', TO_DATE('2020-06-29', 'YYYY-MM-DD'));

create table comentario(
id_comentario number,
id_usuario number,
id_post number,
texto VARCHAR2(50),
fecha DATE,
PRIMARY KEY(id_comentario),
FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
FOREIGN KEY (id_post) REFERENCES post(id_post)
);

insert into comentario(id_comentario,id_usuario,id_post, texto, fecha)
values (1, 3, 1, 'Este es el comentario 1', TO_DATE('2020-07-08', 'YYYY-MM-DD'));
