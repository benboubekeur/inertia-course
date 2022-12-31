FROM gcr.io/educative-exec-env/educative-ubuntu-microvm:latest
RUN apt-get update && apt-get install -y docker.io
RUN apt-get install -y curl && apt-get install -y wget
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
