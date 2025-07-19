# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy code and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port Flask runs on
EXPOSE 5000

# Use Gunicorn for production
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app.main:app"]
