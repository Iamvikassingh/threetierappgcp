# 3-Tier Auth App

## Stack
- **Frontend**: HTML + CSS + JavaScript (served as static files)
- **Backend**: Node.js + Express
- **Database**: Embedded SQL-like store (NeDB — file-based, no install needed)

## Setup & Run

```bash
cd backend
npm install
node server.js
```

Then open http://localhost:3000

## Features
- Sign Up with Name, Username, Password (password is hashed with bcrypt)
- Sign In — validates credentials from DB
- On success: "Hello, [Name]! You are authorised."
- Unique username enforcement at DB level

## Project Structure
```
app/
├── backend/
│   ├── server.js       ← Express API (signup, signin routes)
│   ├── users.db        ← Auto-created on first run
│   └── package.json
└── frontend/
    └── index.html      ← Full UI (HTML + CSS + JS)
```

## API Endpoints
| Method | Endpoint      | Body                        | Response             |
|--------|---------------|-----------------------------|----------------------|
| POST   | /api/signup   | {name, username, password}  | {success, message}   |
| POST   | /api/signin   | {username, password}        | {success, name, message} |
