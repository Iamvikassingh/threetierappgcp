# MySQL Setup Instructions

## Prerequisites
- MySQL Server installed and running
- Node.js and npm installed

## Setup Steps

### 1. Create Environment File
Copy `.env.example` to `.env` and update with your MySQL credentials:

```bash
cp .env.example .env
```

Edit `.env` with your MySQL connection details:
```
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=threetierapp
DB_PORT=3306
PORT=3000
```

### 2. Create MySQL Database (if not exists)
```bash
mysql -u root -p
```

Then in MySQL shell:
```sql
CREATE DATABASE IF NOT EXISTS threetierapp;
```

### 3. Install Dependencies
```bash
npm install
```

This will install:
- `mysql2` - MySQL driver for Node.js
- `dotenv` - Environment variable management
- All other existing dependencies

### 4. Start the Server
```bash
npm start
```

The database table `users` will be automatically created on first startup if it doesn't exist.

## Database Schema

The `users` table will be created with the following structure:
```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
```

## Key Changes from NeDB to MySQL

- Replaced embedded NeDB database with MySQL
- Added connection pooling for better performance
- Date is now stored using MySQL's `CURRENT_TIMESTAMP`
- Configuration moved to `config/db.js`
- Environment variables now configurable via `.env`
