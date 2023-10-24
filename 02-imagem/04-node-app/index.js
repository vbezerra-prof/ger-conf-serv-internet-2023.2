const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Ola Mundo!!!');
})

app.listen(port, () => {
  console.log(`Aplicacao executando na porta ${port}`);
});