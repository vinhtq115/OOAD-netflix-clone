import React,{useState, useEffect} from 'react'
import { Switch, Route } from 'react-router-dom'
import ContentRow from './ContentRow'
import moviesService from '../service/movie'

const MyList = () => {
    const [movies, setMovies] = useState([])

    useEffect(() => {
      console.log('using effect')
      moviesService
        .getAll()
        .then(initialMovies => {
          console.log(initialMovies)
          setMovies(initialMovies)
        })
    },[])

    return (
      <div className="main">
        <div className="main-content">
          <div className="gallery-content">
            <ContentRow movies={movies}/>
          </div>
        </div>
      </div>
    )
}

export default MyList
