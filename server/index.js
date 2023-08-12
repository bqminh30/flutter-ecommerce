const express = require('express')
const app = express()
const dotenv = require('dotenv')
const mongoose = require('mongoose')

dotenv.config();
const port = 3000
mongoose.connect(process.env.MONGO_URL).then(()=> console.log('db connect ')).catch((err) => console.log("err connect", err))

app.get('/', (req, res) => res.send('Hello World!'))
app.listen(process.env.PORT || port, () => console.log(`Example app listening on port ${process.env.PORT}!`))