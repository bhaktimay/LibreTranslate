FROM python:3.10-slim

WORKDIR /app

# Install OS-level build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "main.py"]
