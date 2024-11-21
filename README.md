# Understanding ACID in Databases

This presentation was presented at Imam Abdulrahman bin Faisal University.

## Setup Docker

Follow these steps to set up Docker for the database:

1. **Build the Docker Image**
   
   ```bash
   docker build -t iau_db .
   ```

2. **Run the Docker Container**
   
   ```bash
   docker run -d -p 5432:5432 --name iau_db iau_db
   ```

3. **Connect to the PostgreSQL Database**
   
   ```bash
   psql -h localhost -U abdo -d iau_db
   ```

## Database Commands

Here are some commands you can use with the database:


- **View All Accounts**
  
  ```sql
  SELECT * FROM accounts;
  ```

- **Update Account Balance**
  
  ```sql
  UPDATE accounts SET balance = balance - 100 WHERE account_id = 3;
  ```

- **Manage Transactions**
  
  ```sql
  BEGIN TRANSACTION;
  
  SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
  
  COMMIT;
  
  ROLLBACK;
  ```

## Docker Compose

If you prefer using Docker Compose, here is the `docker-compose.yaml` file:

```yaml:docker-compose.yaml
version: '3.8'

services:
  postgres:
    build: .
    environment:
      POSTGRES_DB: iau_db 
      POSTGRES_USER: abdo
      POSTGRES_PASSWORD: abdo123
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

## Initialization Scripts

The `init.sql` script is used to set up the database initially. Make sure it is placed in the `docker-entrypoint-initdb.d` directory.

## Helpful Commands

Here are some useful commands from `commands.txt`:

- **Build the Docker Image**
  
  ```bash
  docker build -t iau_db .
  ```

- **Run the Docker Container**
  
  ```bash
  docker run -d -p 5432:5432 --name iau_db iau_db
  ```

- **Connect to PostgreSQL**
  
  ```bash
  psql -h localhost -U abdo -d iau_db
  ```
