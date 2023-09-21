const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send("Hello Ben, welcome to your Dockerized Express.js application");
});

app.listen(port, () => {
  console.log(`Application is listening at http://localhost:${port}`);
});
