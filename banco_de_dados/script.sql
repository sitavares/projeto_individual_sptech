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
(null, "Arcade"),
(null, 'Estratégia');

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

INSERT INTO usuario VALUES
(null, 'João', 'joaosilva@gmail.com', md5('joao1234'), 1),
(null, 'Vitor', 'vitorsouza@gmail.com', md5('vitor1234'), 2),
(null, 'Paulo', 'paulo.silva@sptech.school', md5('paulo1234'), 3),
(null, 'Vivian', 'vivian.silva@sptech.school', md5('vivian1234'), 9),
(null, 'Enzo', 'enzo.medej@sptech.school', md5('enzo1234'), 1),
(null, 'Giovanna', 'giovanna.benichel@sptech.school', md5('giovanna1234'), 9);

INSERT INTO endereco VALUES
()

SELECT * FROM estiloFav;
SELECT * FROM usuario;
SELECT * FROM endereco;


-- select feito para fazer a consulta na função do node para plotar o gráfico com chart js
select e.nome, 
count(u.id) as quantidadeDeSelecoes
from estiloFav e join usuario u on fkEstiloFav = idEstiloFav group by e.nome;

-- select do login para poder atalizar o cadastro usando o sessionStorage do navegador
SELECT * FROM usuario JOIN endereco on usuario.id = fkUsuario WHERE email = 'silvio.tavares@sptech.school' AND senha = md5('silvio123');

UPDATE usuario SET nome = 'Silvio', email = 'silvio.tavares@sptech.school', senha = md5('silvio1234'), fkEstiloFav = 1 WHERE id = 1;

UPDATE endereco SET numero = 135, cep = '03924-280' WHERE fkUsuario = 1;