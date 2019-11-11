import React, {useState, useEffect} from 'react';
import Main from './components/Main'
import Header from './components/Header'
import moviesService from './service/movie'
import './App.css';

const App = () => {
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
    <div className="background">
      <Header/>
      <Main movies={movies}/>
    </div>
  )
}
export default App;
