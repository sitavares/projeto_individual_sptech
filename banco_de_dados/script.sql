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
(null, "Terror"),
(null, "Plataforma"),
(null, "Arcade");

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkEstiloFav int, foreign key(fkEstiloFav) references estiloFav(idEstiloFav)
);

CREATE TABLE Endereco (
idEndereco INT auto_increment primary key,
numero INT,
cep VARCHAR(9),
fkUsuario INT, foreign key(fkUsuario)references usuario(id)
);


SELECT * FROM estiloFav;
SELECT * FROM usuario;
SELECT * FROM endereco;


-- select feito para fazer a consulta na função do node para plotar o gráfico com chart js
select e.nome, 
count(u.id) as quantidadeDeSelecoes
from estiloFav e join usuario u on fkEstiloFav = idEstiloFav group by e.nome; 

-- criptografia desejável
SELECT aes_encrypt('senhaSegura', 'chaveSegura');