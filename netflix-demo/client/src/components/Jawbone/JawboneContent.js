import React from 'react'
import JawbonePlot from './JawbonePlot'
import JawboneTrailer from './JawboneTrailer'

const JawboneContent =() => {
  return (
    <div class="jawbone-content">
      <div class="jawbone-background">
        <JawboneTrailer/>
        <JawbonePlot/>
      </div>
    </div>
  )
}

export default JawboneContent
