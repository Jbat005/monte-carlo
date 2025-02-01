# Use official Python image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Flask API
EXPOSE 8080

# Start Monte Carlo API
CMD ["waitress-serve", "--host", "0.0.0.0", "--port", "8081", "monte-carlo-api:app"]
