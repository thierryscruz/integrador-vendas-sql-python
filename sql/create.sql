-- =======================================================================================
-- Arquivo: create.sql
-- Objetivo: Script DDL para criar a estrutura no SQL Server.
-- Conteúdo:
--   1. Tabela 'vendas': Armazena os dados transacionais.
--   2. Trigger 'tg_calcular_comissao': Regra de negócio automática (10% comissão).
--   3. Procedure 'sp_processar_venda': Interface segura para inserção com validação.
-- =======================================================================================

-- Criação da Tabela
-- Verifica se a tabela 'vendas' já existe para garantir que o script possa ser rodado múltiplas vezes sem erro (Idempotência)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'vendas')
BEGIN
    CREATE TABLE vendas (
        id INT IDENTITY(1,1) PRIMARY KEY,
        produto VARCHAR(255) NOT NULL,
        valor DECIMAL(10, 2) NOT NULL,
        data_venda DATE NOT NULL,
        status VARCHAR(50) DEFAULT 'Pendente',
        comissao DECIMAL(10, 2)
    );
END
GO

-- Trigger para calcular comissão (SQL Server usa AFTER INSERT)
CREATE OR ALTER TRIGGER tg_calcular_comissao
ON vendas
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    -- Atualiza a tabela vendas cruzando com a tabela virtual 'inserted'
    UPDATE v
    SET v.comissao = i.valor * 0.10
    FROM vendas v
    INNER JOIN inserted i ON v.id = i.id;
END;
GO

-- Stored Procedure para processar a venda (Validação e Inserção)
CREATE OR ALTER PROCEDURE sp_processar_venda
    @produto VARCHAR(255),
    @valor DECIMAL(10, 2),
    @data DATE,
    @status VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Validação: Valor deve ser positivo
    IF @valor > 0
    BEGIN
        INSERT INTO vendas (produto, valor, data_venda, status)
        VALUES (@produto, @valor, @data, @status);
    END
    ELSE
    BEGIN
        -- PRINT exibe mensagem na aba de mensagens do SMS/Azure Data Studio
        PRINT 'Venda ignorada: Valor inválido para o produto ' + @produto;
    END
END;
GO
