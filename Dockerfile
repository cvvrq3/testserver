FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Fly.io использует этот порт по умолчанию
ENV PORT=8080

# Твой сервер будет слушать на всех интерфейсах внутри контейнера
CMD ["python", "stun_server.py"]