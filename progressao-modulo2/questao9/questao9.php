09. Elabore um banco de dados para um pequeno sistema que permite que a chefia do departamento de programação da utd cadastre todas as disciplinas de todos os cursos ofertados utilizando para isso uma entidade cursos e outra disciplina. Para o curso, é necessário conhecer basicamente o código do curso e o nome do curso. Para as disciplinas, a chefia quer registrar o código da disciplina, o nome da disciplina e a carga-horária da mesma. Uma disciplina estará sempre associada a um só curso. Já um curso, poderá ter vinculado a ele diversas disciplinas.

-- cria o banco
create database programacaoutd; 


-- seleciona o banco
use programacaoutd; 


-- cria a tabela cursos
create table if not exists cursos (
idcurso int not null auto_increment primary key,  
nome varchar(50) not null unique
)default charset = utf8mb4;                      


-- popula a tabela cursos
insert into cursos(nome) values 
('Análise e Desenvolvimento de Sistemas'),
('Ciências da Computação'),
('Engenharia da Computação'),
('Jogos Digitais'),
('Sistemas de Informação'),
('Sistemas para Internet');

--cria a tabela disciplinas
create table if not exists disciplinas (
id_disciplina int not null auto_increment primary key,
nome varchar(50) not null unique,
carga int unsigned,
codcurso int,
foreign key (codcurso) references cursos(idcurso)
)default charset = utf8mb4;

-- popula tabela disciplinas
insert into disciplinas values
('Tecnologia da Informação e Comunicação', '100', '1'),
('Processos de Desenvolvimento de Software', '80', '1'),
('Fundamentos de Sistemas de Informação', '110', '1'),
('Organização de Computadores', '100', '1'),
('Planejamento de Carreira e Sucesso Profissional', '100', '2'),
('Algoritmos', '80', '2'),
('Matemática Computacional', '110', '2'),
('Tecnologias Web', '100', '2'),
('Propriedade Intelectual, Direito e Ética', '100', '3'),
('Sistemas Operacionais', '80', '3'),
('Estrutura de Dados', '110', '3'),
('Redes de Computadores', '100', '3')
('Linguagem de Programação', '100', '4'),
('Inovação Tecnológica', '80', '4'),
('Governança em Tecnologia da Informação', '110', '4')
('Modelagem de Dados', '100', '4'),
('Modelagem de Sistemas', '100', '5'),
('Gestão de Projetos Para T.I.', '80', '5'),
('Engenharia de Usabilidade', '110', '5'),
('Desenvolvimento de Software', '100', '5'),
('Programação Para internet Rica', '100', '6'),
('Seminários Integrados', '80', '6'),
('Gestão de Segurança da Informação', '110', '6'),
('Implementação de Banco de Dados', '100', '6');