import { Request, Response } from "express";
import { connect } from "mongoose";

const express = require('express');
const dotenv = require('dotenv')

dotenv.config()

const app = express()
const port = process.env.PORT || 9000
const databaseURL = process.env.DATABASE_URL || 'mongodb://localhost:27017/'

app.get('/', (_req: Request, res: Response ) => {
    res.send('Hello!!')
})

// app.post('/scores/:team', (req: Request<{team: string}>, res: Response) => {
//     const {team} = req.params
//     if ()
// })

app.listen(port, async () => {
    await connect(databaseURL)
    console.log(`Server is running at 127.0.0.1:${port}`)
})