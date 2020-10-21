FROM python:3.8-alpine

# Add new user & set working directory.
RUN adduser -D testuser
WORKDIR /home/testuser

# Copy Python packages and install them.
COPY requirements.txt .
RUN pip install -r requirements.txt

# Set file ownership of all files in home directory to new user only.
RUN chown -R testuser:testuser .

# Set read, write, execute permissions of all files in home directory to new user only.
RUN chmod 700 .

# Become new user.
USER testuser

# Keeps the container running in detached mode. Only use for development purposes.
ENTRYPOINT ["tail", "-f", "/dev/null"]