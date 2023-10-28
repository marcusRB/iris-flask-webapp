# Use the official Python base image
FROM python:3.9-slim

# Create a directory for the application
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Install the required Python packages
RUN pip install -r requirements.txt
RUN pip install gunicorn

# Expose the necessary ports
EXPOSE 5000 8080

# Set the entrypoint command to run the application
# ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]
ENTRYPOINT ["python", "wsgi:app"]