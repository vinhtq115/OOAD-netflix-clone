import React from 'react'
import ContentRow from './ContentRow'
import VideoPlayer from './VideoPlayer'

const Main = ({movies}) => {
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

export default Main
