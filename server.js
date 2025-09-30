const express = require('express');
const helmet = require('helmet');
const cors = require('cors');

const app = express();
app.use(helmet());
app.use(cors());
app.use(express.json());

app.get('/api/health', (req, res) => res.json({ status: 'ok' }));

// Placeholder user balance endpoint
app.get('/api/user/balance', (req, res) => {
  // In real app replace with DB lookup using authenticated user
  res.json({ balance: 0.00 });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, ()=> console.log('Server running on port', PORT));
