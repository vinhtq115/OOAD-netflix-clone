import React, {useState, useEffect} from 'react'
import GoBackButton from './GoBackButton'

const VideoPlayer = () => {
  return (
    <div class="video-player">
      <GoBackButton/>
      <video id="videoPlayer" controls autoplay width="100%" position="fixed">
        <source src="http://localhost:3001/movie" type='video/mp4'/>
      </video>
    </div>
  )
}

export default VideoPlayer
