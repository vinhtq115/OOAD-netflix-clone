import React from 'react'
import JawbonePlot from './JawbonePlot'
import JawboneTrailer from './JawboneTrailer'

const JawboneContent =() => {
  return (
    <div class="jawbone-overlay">
      <div class="jawbone-content">
        <JawboneTrailer/>
        <JawbonePlot/>
      </div>
    </div>
  )
}

export default JawboneContent
