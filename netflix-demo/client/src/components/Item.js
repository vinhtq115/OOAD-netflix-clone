import React from 'react'
import moviesService from '../service/movie'

const Item = ({id, name, plot, poster}) => {
  let link = "http://localhost:3001/api/movies/" + id

  const onClick = event => {
    changeToApi(id)
  }

  const changeToApi = id => {
    moviesService
      .getMovie(id)
  }

  return (
    <div className="row-item">
      <a href={link}>
        <img src={poster} alt={name}/>
      </a>
    </div>
  )
}

export default Item
