const path = require('path');
const express = require('express');


const port = 2887;
const app = express()

app.use(express.static(path.resolve(__dirname, 'public')));

app.listen(port, () => {
    console.log(`http://localhost:${port}`)
})