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



CREATE TABLE Endereco (
idEndereco INT auto_increment,
numero INT,
cep VARCHAR(9),
fkUsuario INT, foreign key(fkUsuario)references usuario(id),
PRIMARY KEY(idEndereco, fkUsuario)
);

INSERT INTO endereco (numero, cep, fkUsuario) VALUES
(135, '03924-280',(SELECT max(id) FROM usuario));

SELECT * FROM estiloFav;
SELECT * FROM usuario;


select e.nome, 
count(u.id) as quantidadeDeSelecoes
from estiloFav e join usuario u on fkEstiloFav = idEstiloFav group by e.nome; 