CREATE DATABASE projetoi;
USE projetoi;

CREATE TABLE estiloFav (
idEstiloFav int primary key auto_increment,
nome VARCHAR(45)
);


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkEstiloFav int, foreign key(fkEstiloFav) references estiloFav(idEstiloFav)
);

SELECT COUNT(id) FROM usuario WHERE fkEstiloFav = 2;

INSERT INTO estiloFav VALUES
(null, "RPG"),
(null, "FPS"),
(null, "Ação e aventura"),
(null, "Corrida"),
(null, "Esportes"),
(null, "Terror");

SELECT * FROM estiloFav;
SELECT * FROM usuario;

SELECT count(*) FROM usuario WHERE fkEstiloFav = 2;