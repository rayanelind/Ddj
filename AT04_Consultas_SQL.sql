
CREATE DATABASE Escola;
USE Escola;

CREATE TABLE Alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Cursos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    duracao INT
);

CREATE TABLE Matriculas (
    id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

-- Inserir dados na tabela Alunos
INSERT INTO Alunos VALUES
(1, 'Maria Silva', 'maria@email.com'),
(2, 'João Souza', 'joao@email.com'),
(3, 'Ana Lima', 'ana@email.com'),
(4, 'Carlos Nunes', 'carlos@email.com'),
(5, 'Luana Dias', 'luana@email.com'),
(6, 'Pedro Henrique', 'pedro@email.com'),
(7, 'Camila Rocha', 'camila@email.com'),
(8, 'Marcos Paulo', 'marcos@email.com'),
(9, 'Juliana Alves', 'juliana@email.com'),
(10, 'Bruno Castro', 'bruno@email.com');

-- Inserir dados na tabela Cursos
INSERT INTO Cursos VALUES
(1, 'Redes de Computadores', 18),
(2, 'Programação', 24),
(3, 'Banco de Dados', 20),
(4, 'Segurança da Informação', 12),
(5, 'Lógica de Programação', 10),
(6, 'Desenvolvimento Web', 22),
(7, 'Python Básico', 15),
(8, 'Python Avançado', 20),
(9, 'Administração de Sistemas', 14),
(10, 'Empreendedorismo Digital', 16);

-- Inserir dados na tabela Matriculas
INSERT INTO Matriculas VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- CONSULTAS COM INNER JOIN E LIKE

-- 1. Nome dos alunos e o nome dos cursos que estão matriculados
SELECT a.nome, c.nome
FROM Alunos a
INNER JOIN Matriculas m ON a.id = m.aluno_id
INNER JOIN Cursos c ON m.curso_id = c.id;

-- 2. Alunos matriculados em cursos que contêm a palavra "Python"
SELECT a.nome, c.nome
FROM Alunos a
INNER JOIN Matriculas m ON a.id = m.aluno_id
INNER JOIN Cursos c ON m.curso_id = c.id
WHERE c.nome LIKE '%Python%';

-- 3. Cursos com duração maior que 15 e os nomes dos alunos matriculados
SELECT a.nome, c.nome, c.duracao
FROM Alunos a
INNER JOIN Matriculas m ON a.id = m.aluno_id
INNER JOIN Cursos c ON m.curso_id = c.id
WHERE c.duracao > 15;

-- 4. Alunos com nome contendo 'a' e seus cursos
SELECT a.nome, c.nome
FROM Alunos a
INNER JOIN Matriculas m ON a.id = m.aluno_id
INNER JOIN Cursos c ON m.curso_id = c.id
WHERE a.nome LIKE '%a%';

-- 5. Cursos com nome que termina com 'o' e seus alunos
SELECT a.nome, c.nome
FROM Alunos a
INNER JOIN Matriculas m ON a.id = m.aluno_id
INNER JOIN Cursos c ON m.curso_id = c.id
WHERE c.nome LIKE '%o';
