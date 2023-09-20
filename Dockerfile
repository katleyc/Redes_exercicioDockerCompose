# Use uma imagem base do Python para FastAPI
FROM python:3.9

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Instalação das dependências
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copie o código do aplicativo para o contêiner
COPY . .

# Comando para iniciar o aplicativo
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
