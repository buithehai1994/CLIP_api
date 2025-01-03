# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory inside the container to the root directory
WORKDIR /

# Copy the project files into the container (directly into the root)
COPY . .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 8000

# Command to run the CLIP API service
CMD ["clip-api-service", "serve", "--model-name", "ViT-B-32:openai"]
