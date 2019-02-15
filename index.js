const express = require('express');

const app = express();

app.get('/', (req, res) => { res.json({status: 'ok'}); });

app.listen(80, () => console.log('working'));
