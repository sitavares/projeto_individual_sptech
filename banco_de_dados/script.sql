CREATE DATABASE projetoi;
USE projetoi;

CREATE TABLE estiloFav (
idEstiloFav int primary key auto_increment,
nome VARCHAR(45)
);

INSERT INTO estiloFav VALUES
(null, "RPG"),
(null, "FPS"),
(null, "Ação e aventura"),
(null, "Corrida"),
(null, "Esportes"),
(null, "Terror");

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkEstiloFav int, foreign key(fkEstiloFav) references estiloFav(idEstiloFav)
);

SELECT COUNT(id) FROM usuario WHERE fkEstiloFav = 1;

CREATE TABLE Endereco (
idEndereco INT auto_increment PRIMARY KEY,
rua VARCHAR(45),
numero INT,
bairro VARCHAR(45),
cidade VARCHAR(45),
estado CHAR(2),
cep VARCHAR(9),
fkUsuario INT, foreign key(fkUsuario)references usuario(id)
);

INSERT INTO endereco (rua, numero, bairro, cidade, estado, cep, fkUsuario) VALUES
('Rua 1', 135, 'bairro 1', 'São Paulo', 'SP', '03924-280', (SELECT max(id) FROM usuario));

SELECT * FROM estiloFav;
SELECT * FROM usuario;


select e.nome, 
count(u.id) as quantidade
from estiloFav e join usuario u on fkEstiloFav = idEstiloFav group by e.nome; 

SELECT count(*) FROM usuario WHERE fkEstiloFav = 2;