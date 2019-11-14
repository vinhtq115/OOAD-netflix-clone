import React from 'react'
import ReactDOM from 'react-dom'
import ModalLauncher from './Jawbone/ModalLauncher'
import VideoPlayer from './VideoPlayer'
import { Link } from 'react-router-dom'

import moviesService from '../service/movie'

const Item = ({id, name, plot, poster}) => {
  let count = 1;

  const onClick = () => {
    changeToApi(id)
  }

  const changeToApi = id => {
    console.log(String(count+=1) + ' getting')
    moviesService.getMovie(id)

  }

  return (
    <div className="row-item">
      <div onClick={onClick}>
        <Link to='/watch'>
          <img src={poster} alt={name}/>
        </Link>
      </div>
    </div>
  )
}

export default Item
