# Dockerfile
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code
COPY app.py app.py

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]

