const express = require('express')
const app = express()
const port = 8080

app.get('/appenv', (req, res) => res.send(process.env.APP_ENV))
app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))