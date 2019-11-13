import React, {useState, useEffect} from 'react'
import GoBackButton from './GoBackButton'

const VideoPlayer = () => {
  return (
    <div class="video-player">
      <GoBackButton/>
      <video id="videoPlayer" controls autoPlay width="100%" position="fixed">
        <source src="http://localhost:3001/movie?t=1923801924" type='video/mp4'/>
      </video>
    </div>
  )
}

export default VideoPlayer
