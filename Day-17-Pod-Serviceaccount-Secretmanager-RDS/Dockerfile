FROM python:3.12-slim

# Prevent Python from writing .pyc files
# and enable unbuffered logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Create directory for application logs
RUN mkdir -p /var/log/app

# Copy application
COPY app.py .

# Application port
EXPOSE 5000

# Start Flask application
CMD ["python", "app.py"]
