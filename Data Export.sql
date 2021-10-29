select * from gafanhotos;

select * from cursos;

insert into cursos value
('1','HTML','Cursos de HTML','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2010'),
('4','PGP','Curso de PHP para iniciantes','40','20','2000'),
('5','Jarva','Introdu à Linguagem Java','10','29','2015'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','CUrso Completo de Word','40','30','2018'),
('8','Sapateado','Dança Rítmecas','40','30','2016'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polemica e ganhar inscritos','40','30','2018');


-- atualização de dados linhas
update cursos set nome= 'HTML5' where idcurso = '1';
update cursos set nome= 'PHP', ano = '2015' where idcurso = '4';
update cursos set  ano = '2018', carga = '00' where ano ='2050' limit 1 ;

-- apagar todas as linhas com ano especifico
delete from cursos where ano= '2050' limit 2;

-- apagar os dados da tabela
truncate cursos;

select * from cursos;