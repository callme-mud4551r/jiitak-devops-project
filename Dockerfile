# Use an official Python image from DockerHub
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy only necessary files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY App/ ./app/

# Expose port 5000 (Flask default)
EXPOSE 5000

# Set the default command to run the app
CMD ["python", "app/main.py"]
