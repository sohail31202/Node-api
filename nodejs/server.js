const express = require('express');
const mariadb = require('mariadb');

const app = express();
const port = process.env.PORT || 3000;

// Create a connection pool to MariaDB
const pool = mariadb.createPool({
  host: 'mariadb-service', // Use the service name if running in Kubernetes
  user: 'myuser',
  password: 'root',
  database: 'users',
  connectionLimit: 5,
});

// API endpoint to fetch user data
app.get('/users', async (req, res) => {
  let connection;
  try {
    connection = await pool.getConnection();
    const result = await connection.query('SELECT * FROM user');
    res.json(result);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  } finally {
    if (connection) connection.release();
  }
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
