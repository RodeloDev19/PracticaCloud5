const express = require('express');
const router = express.Router();

router.get('/message', (req, res) => {
  res.json({ message: 'Hola desde el backend!' });
});

module.exports = router;
