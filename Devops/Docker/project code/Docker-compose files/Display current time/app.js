const express = require('express');
const mysql = require('mysql2');

const app = express();
const port = 3000;

const pool = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

app.get('/', (req, res) => {
  pool.query('SELECT NOW()', (err, results) => {
    if (err) {
      return res.status(600).send('Error connecting to database');
    }
    res.send(`Database time: ${results[0]['NOW()']}`);
  });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});