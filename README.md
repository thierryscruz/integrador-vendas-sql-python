# 🚀 Data Sentinel

**Data Sentinel** é um integrador de vendas de alta performance que automatiza a ingestão de dados de arquivos CSV para um banco de dados relacional.

A principal filosofia deste projeto é a **segregação de responsabilidades**:
- **Python**: Atua como orquestrador e ponte de leitura (I/O).
- **SQL (Microsoft SQL Server)**: Detém a lógica de negócio pesada, validação de dados e cálculos financeiros via Stored Procedures e Triggers (T-SQL) para garantir atomicidade e consistência.

> "Neste projeto, utilizei Python para a automação do fluxo e foquei a lógica de negócio pesada em SQL (Triggers/Procedures) para garantir integridade e performance."

---

## 🛠️ Tecnologias Utilizadas

- **Banco de Dados**: Microsoft SQL Server (T-SQL, Stored Procedures, Triggers)
- **Backend/Scripting**: Python 3.10+
- **Bibliotecas**: `pandas` (Manipulação de Dados), `pyodbc` (Driver ODBC para SQL Server)
- **Analytics**: Microsoft Power BI (Dashboard Interativo)

---

## 🏗️ Arquitetura do Projeto

### 1. O Coração (SQL Avançado)
A inteligência do sistema reside no banco de dados.
- **Tabela `vendas`**: Armazena o histórico com integridade tipada (`IDENTITY` para IDs).
- **Stored Procedure `sp_processar_venda`**: Recebe dados brutos da aplicação, valida regras de negócio (ex: valores negativos) e insere apenas dados limpos.
- **Trigger `tg_calcular_comissao`**: Dispara automaticamente **AFTER INSERT**. Calcula 10% de comissão para cada venda registrada, cruzando com a tabela virtual `inserted`.

### 2. A Ponte (Python)
O script `app.py` é leve e focado em eficiência de I/O.
- Lê arquivos `.csv` em lote usando a performance do C-engine do Pandas.
- Conecta ao PostgreSQL de forma segura.
- Invoca a Procedure para cada registro, delegando o processamento para o motor do banco.

---

## 📋 Como Executar

### Pré-requisitos
- Python instalado.
- Servidor PostgreSQL rodando.

### Passo 1: Configurar Banco de Dados
Execute os scripts SQL na ordem abaixo no seu client SQL (SSMS, Azure Data Studio):
```sql
-- 1. Cria a estrutura (Tabela, Procedure e Trigger)
-- Execute o conteúdo de: sql/create.sql

-- 2. (Opcional) Popula o banco com dados iniciais
-- Execute o conteúdo de: sql/baseinic.sql
```

### Passo 2: Instalar Dependências
```bash
cd src
pip install -r requirements.txt
```

### Passo 3: Configurar Ambiente
Crie um arquivo `.env` na pasta `src/` com suas credenciais:
```ini
DB_SERVER=SEU_SERVIDOR
DB_NAME=DataSentinelDB
DB_USER=sa
DB_PASS=sua_senha
```

### Passo 4: Rodar a Integração
```bash
python app.py
```

---

## 📊 Dashboard Interativo (Power BI)
Este projeto foi desenhado para integração nativa com o **Power BI**.

1. Abra o Power BI Desktop.
2. Selecione **Obter Dados** > **SQL Server**.
3. Insira o servidor (`localhost` ou seu servidor) e o banco `DataSentinelDB`.
4. Use o modo **DirectQuery** para ver os dados entrando em tempo real conforme o script Python roda.

Sugestão de Visuais:
- **Cartões**: Total de Vendas, Total de Comissões.
- **Gráfico de Barra**: Vendas por Produto.
- **Pizza**: Status dos Pedidos (Confirmado, Pendente, etc).

> **Nota**: Para facilitar a visualização imediata, o projeto inclui o arquivo de dados `data/dataset_powerbi.csv`. Você pode carregar este arquivo no Power BI para ver os gráficos populados com os mesmos dados do script de carga inicial, sem precisar configurar a conexão com o banco de dados SQL agora.

---

> _Obs: O arquivo `sql/baseinic.sql` contém um script para inserção de 100 produtos variados para testes de carga e validação da trigger._
