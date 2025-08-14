# 1. Use a base image
FROM python:alpine3.21

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the requirements.txt file first for dependency installation
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application files
COPY . .

# 6. Expose a port for the app
EXPOSE 3000

# 7. Set the command to run the app
CMD ["python", "app.py"]
