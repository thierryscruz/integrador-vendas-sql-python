import pandas as pd
import pyodbc
import os
from dotenv import load_dotenv

# Carrega variáveis de ambiente (crie um arquivo .env com DB_NAME, DB_USER, etc.)
load_dotenv()

def processar_arquivos():
    try:
        # Configuração da Conexão SQL Server (ODBC)
        # Atenção: DB_HOST deve ser no formato 'SERVER\INSTANCE' ou apenas 'SERVER'
        server = os.getenv("DB_HOST", "localhost")
        database = os.getenv("DB_NAME", "DataSentinelDB")
        username = os.getenv("DB_USER", "sa")
        password = os.getenv("DB_PASS", "yourStrong(!)Password")
        
        # String de conexão padrão para ODBC Driver 17
        conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
        
        print(f"🔌 Conectando ao SQL Server em {server}...")
        conn = pyodbc.connect(conn_str)
        cursor = conn.cursor()

        # Leitura do CSV
        csv_path = os.path.join("..", "data", "vendas.csv")
        print(f"🔄 Lendo arquivo: {csv_path}")
        df = pd.read_csv(csv_path)

        print("🚀 Iniciando processamento de vendas...")

        sucessos = 0
        erros = 0

        for index, row in df.iterrows():
            try:
                # Chama a Stored Procedure (Sintaxe ODBC para SQL Server)
                # EXEC sp_processar_venda @produto, @valor, @data, @status
                
                # Nota: Em pyodbc com stored procedures que não retornam resultados,
                # usamos {CALL ...} ou simplesmente executamos o comando SQL cru.
                sql = "EXEC sp_processar_venda ?, ?, ?, ?"
                params = (row['produto'], float(row['valor']), row['data'], row['status'])
                
                cursor.execute(sql, params)
                conn.commit() # Commit explícito a cada linha ou em lotes
                sucessos += 1
            except Exception as e:
                print(f"❌ Erro na linha {index + 1}: {e}")
                erros += 1

        print("-" * 30)
        print("✅ Processamento Concluído!")
        print(f"📦 Total Processado: {len(df)}")
        print(f"👍 Inseridos com Sucesso (ou validados): {sucessos}")
        print(f"⚠️ Falhas de Execução: {erros}")

        cursor.close()
        conn.close()

    except Exception as e:
        print(f"❌ Erro Crítico de Conexão ou Leitura: {e}")

if __name__ == "__main__":
    processar_arquivos()
