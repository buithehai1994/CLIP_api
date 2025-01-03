# Use Python 3.9-slim as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /

# Copy requirements.txt from the root directory to the container
COPY requirements.txt ./

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Command to run FastAPI
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]
