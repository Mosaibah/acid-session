# Dockerfile
FROM postgres:16

# Arguments for database configuration
ARG POSTGRES_DB=test_db
ARG POSTGRES_USER=abdo
ARG POSTGRES_PASSWORD=abdo123

# Set environment variables
ENV POSTGRES_DB=$POSTGRES_DB
ENV POSTGRES_USER=$POSTGRES_USER
ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD

# Create directory for initialization scripts
RUN mkdir -p /docker-entrypoint-initdb.d

# Copy initialization scripts 
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432

# Set the data directory
VOLUME ["/var/lib/postgresql/data"]

# Default command to run PostgreSQL
CMD ["postgres"]
