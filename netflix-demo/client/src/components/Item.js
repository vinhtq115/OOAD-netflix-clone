import React from 'react'
import ReactDOM from 'react-dom'
import JawboneContent from './Jawbone/JawboneContent'
import Collapsible from './Collapsible'
import VideoPlayer from './VideoPlayer'
import { Link } from 'react-router-dom'

import moviesService from '../service/movie'

const Item = ({id, name, plot, poster}) => {

  const onClick = () => {
    console.log(
      'clicking'
    )
    changeToApi(id)
  }

  const changeToApi = id => {
    console.log('getting')
    moviesService.getMovie(id)

  }

  return (
    <div className="row-item">
      <div onClick={onClick}>
        <Link to='/watch'>
          <img src={poster} alt={name}/>
        </Link>
      </div>
      <Collapsible name={name} plot={plot}/>
    </div>
  )
}

export default Item
