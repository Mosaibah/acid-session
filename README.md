# Understanding ACID in Databases (101)

This repository contains the materials and commands used in my YouTube tutorial about ACID properties in databases. Here you'll find all the code samples, slides, and setup instructions demonstrated in the video.

🎥 **Watch the Tutorial**: [Understanding ACID Properties in Databases](https://youtu.be/TN_OZ1nocAc)

📑 **View the Slides**: [Presentation Slides](https://github.com/Mosaibah/acid-session/blob/main/ACID%20Presentation.pdf)

## Setup Docker

Follow these steps to set up Docker for the database:

1. **Build the Docker Image**
   
   ```bash
   docker build -t test_db .
   ```

2. **Run the Docker Container**
   
   ```bash
   docker run -d -p 5432:5432 --name test_db test_db
   ```

3. **Connect to the PostgreSQL Database**
   
   ```bash
   psql -h localhost -U abdo -d test_db
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
      POSTGRES_DB: test_db 
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
  docker build -t test_db .
  ```

- **Run the Docker Container**
  
  ```bash
  docker run -d -p 5432:5432 --name test_db test_db
  ```

- **Connect to PostgreSQL**
  
  ```bash
  psql -h localhost -U abdo -d test_db
  ```
