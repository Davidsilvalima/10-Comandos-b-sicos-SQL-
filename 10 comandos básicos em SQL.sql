-- 1. Criar banco de dados: create database 

CREATE DATABASE Supermercado;
USE Supermercado;

 -- 2. Criar Tabelas: CREATE TABLE
 
 CREATE TABLE Fornecedoress (Cod_Fornec SMALLINT PRIMARY KEY,Nome_Fornec VARCHAR(50));
 
CREATE TABLE Produtos (
ID_Prod SMALLINT PRIMARY KEY,
Nome_Prod VARCHAR(50) NOT NULL,
Quant_Prod SMALLINT NOT NULL,
Preco_Prod DECIMAL(10, 2),
Cod_fornec SMALLINT,
CONSTRAINT Fk_Cod_Fornec FOREIGN KEY(Cod_Fornec)
REFERENCES Fornecedoress(Cod_Fornec)
);
-- 3. inserir dados nas tabelas; INSERT INTO

INSERT INTO Fornecedoress (Cod_Fornec, Nome_Fornec)
VALUES (1, "Acme");

INSERT INTO Produtos
VALUES (100, "Monitor LCD", 12, 550.00, 1),
(101, "Roteador Banda Larga", 8, 130.00, 1),
(102, "Teclado", 15, 40.00, 1),
(103, "Pendrive 64GB", 22, 48.00, 1),
(104, "Webcam", 6, 170.00, 1);

-- 4. Efetuar consultas trazendo colunas especificas 

SELECT Nome_fornec FROM Fornecedoress;
SELECT Nome_Prod, Preco_Prod FROM Produtos;
SELECT * FROM Produtos; 

-- 5. Consultando uma tabela com filtros de dados

SELECT Nome_Prod FROM Produtos
WHERE ID_Prod= 101;

-- 6. Alterar um registro na tabela: UPDATE
UPDATE Produtos
SET Preco_Prod = 630.00
WHERE ID_Prod = 100;

SELECT Preco_Prod FROM Produtos 
WHERE ID_Prod = 100;

-- 7. Excluir registros de uma tabela: DELETE FROM

DELETE FROM Produtos
WHERE ID_Prod = 101;

SELECT Nome_Prod FROM Produtos 
WHERE ID_Prod = 101;

-- 8. Trazer dados de duas ou mais tabelas relacionadas 

SELECT Nome_Prod, Nome_Fornec
FROM Fornecedoress
INNER JOIN Produtos
ON Fornecedoress.Cod_Fornec = Produtos. Cod_Fornec;

-- 9. Retornar resultados ordenados em uma consulta 
SELECT Nome_prod, Preco_Prod
FROM Produtos
ORDER BY Nome_Prod;

-- 10. Apagar todos os dados de uma tabela de uma só vez

TRUNCATE TABLE Produtos;

SELECT * FROM Produtos