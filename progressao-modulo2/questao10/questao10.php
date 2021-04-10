a) Mostrar todos os cursos cadastrados no banco de dados;
select nome from cursos;

b) Mostrar o nome e a carga horária de todas as disciplinas em ordem alfabética;
select nome, carga from disciplinas
order by nome;

c) Mostrar o nome do curso, o nome da disciplina e a carga horária de cada disciplina ordenando pelo nome do curso e em seguida pelo nome da disciplina;
select c.nome, d.nome, d.carga from disciplinas d
join cursos c
on c.idcurso = d.codcurso
order by c.nome, d.nome;

d) Mostrar somente as disciplinas de um determinado curso (escolha o nome de um curso para filtrar as disciplinas do mesmo);
select nome from disciplinas where codcurso = '1';

e) Mostrar o nome do curso, o nome da disciplina e a carga horária de todas as disciplinas que possuem uma carga horária maior do que 40h;
select c.nome, d.nome, d.carga from disciplinas d
join cursos c
on c.idcurso = d.codcurso
where d.carga > '40'
order by c.nome, d.nome;

f) Mostrar o nome da disciplina e o nome do curso a qual pertence para todas as disciplinas que possuem o texto “dados” dentro do nome da disciplina;
select d.nome, c.nome from disciplinas d
join cursos c
on c.idcurso = d.codcurso
where d.nome like '%dados%';