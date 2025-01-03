# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory
WORKDIR /

# Copy the project files
COPY 

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 8000

# Command to run the API service
CMD ["clip-api-service", "serve", "--model-name", "ViT-B-32:openai"]
