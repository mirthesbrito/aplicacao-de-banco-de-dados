USE DB_T05072C_Mirthes_Brito;

Create TABLE Contatos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar (50),
    telefone VARCHAR (20)); 

    INSERT INTO Contatos (nome, telefone) 
    VALUES
    ('Jose', '(11)98765-4321'),
    ('Joao', '(21)92587-6321'),
    ('Antonio', '(11)93654-7854'),
    ('Maria', '(11)96547-8523');

USE DB_T05072C_Mirthes_Brito;

  UPDATE Contatos SET nome = 'Mariana' WHERE id = 1;

SELECT * FROM Contatos;
SELECT * FROM Contatos;
delete from Contatos where id = 1;
SELECT * FROM Contatos;

USE DB_T05072C_Mirthes_Brito;
INSERT into Contatos (nome, telefone) VALUES ('Mariana', '(11)97654-3987');
SELECT * from Contatos;
UPDATE Contatos set id = '1' WHERE id = 5;
SELECT * FROM Contatos;

USE DB_T05072C_Mirthes_Brito;
SELECT * FROM Contatos;
SELECT * FROM Contatos WHERE nome = 'Maria';
SELECT * FROM Contatos ORDER BY nome DESC;
SELECT * FROM Contatos WHERE telefone LIKE "%(11)%";
UPDATE Contatos SET telefone = '(21)90000-0000'
 WHERE nome = 'Joao';

SELECT * FROM Contatos;

-- CRIANDO TABELA MENSAGENS

USE DB_T05072C_Mirthes_Brito;
CREATE TABLE Mensagens (id INT PRIMARY KEY AUTO_INCREMENT,
texto TEXT NOT NULL,
data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
id_contato INT NOT NULL,
FOREIGN KEY (id_contato) REFERENCES Contatos(id));

USE DB_T05072C_Mirthes_Brito;
ALTER TABLE Mensagens 
CHANGE COLUMN id_contato contato_id INT NOT NULL;

-- ADICIONANDO MENSAGENS 
INSERT INTO Mensagens (texto, contato_id) VALUES
('Olá, gostaria de saber o preço do produto x', 1),
('Meu pedido ainda não chegou, podem me ajudar?', 2),
('Obrigada pelo excelente atendimento!', 1);



USE DB_T05072C_Mirthes_Brito;

--- TABELA JOIN

SELECT 
    Contatos.nome, 
    Mensagens.texto, 
    Mensagens.data_envio
FROM Mensagens
JOIN Contatos ON Mensagens.contato_id = Contatos.id;

USE DB_T05072C_Mirthes_Brito;

ALTER TABLE Mensagens 
CHANGE COLUMN texto texto_mensagem TEXT NOT NULL;

SELECT * FROM Mensagens


