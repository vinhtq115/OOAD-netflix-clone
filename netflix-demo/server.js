const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const fs = require('fs');
const cors = require('cors');
const pool = require('./model/moviedb')

const app = express();
const port = process.env.PORT || 3001;
let link = ""

app.use(cors())
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + '/client'));

app.get('/api/movies', (req, res) => {
  pool.query("SELECT * FROM movies", (err, result) => {
    if(err){
      throw err
    }
    res.send(result)
  })
})

app.get('/api/movies/:id', (req, res) => {
  pool.query("SELECT fileLocation FROM movies", (err, result) => {
    if(err){
      throw err
    }
    const id = Number(req.params.id)
    link = result[id-1].fileLocation
    res.send(link)
  })
})

app.get('/movie', function(req, res) {
  const path = link
  const stat = fs.statSync(path)
  const fileSize = stat.size
  const range = req.headers.range

  if (range) {
    const parts = range.replace(/bytes=/, "").split("-")
    const start = parseInt(parts[0], 10)
    const end = parts[1]
      ? parseInt(parts[1], 10)
      : fileSize-1

    const chunksize = (end-start)+1
    const file = fs.createReadStream(path, {start, end})
    const head = {
      'Content-Range': `bytes ${start}-${end}/${fileSize}`,
      'Accept-Ranges': 'bytes',
      'Content-Length': chunksize,
      'Content-Type': 'video/mp4',
    }

    res.writeHead(206, head)
    file.pipe(res)
  } else {
    const head = {
      'Content-Length': fileSize,
      'Content-Type': 'video/mp4',
    }
    res.writeHead(200, head)
    fs.createReadStream(path).pipe(res)
  }
})

app.listen(port, () => console.log(`Listening on port ${port}`));
