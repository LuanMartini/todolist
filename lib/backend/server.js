const express = require('express');
const { Pool } = require('pg');

const app = express();
app.use(express.json());

// Postgres
const db = new Pool({
  host: 'localhost',
  port: 5432,
  user: 'postgres',
  password: 'postgres',
  database: 'todolist'
});

db.query('SELECT 1')
  .then(() => console.log('PostgreSQL conectado'))
  .catch(err => {
    console.error('Erro no PostgreSQL:', err.message);
    process.exit(1);
  });


app.get('/', (_, res) => res.send('API OK'));

app.get('/users', async (_, res) => {
  const { rows } = await db.query('SELECT * FROM users ORDER BY id');
  res.json(rows);
});

app.listen(3000, () =>
  console.log('Servidor rodando na porta 3000')
);
