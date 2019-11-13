import React from 'react'
import { Link } from 'react-router-dom'

const GoBackButton = () => {
  return (
    <div className="go-back-button">
      <Link to='/'><img src={'/back-inverted.png'}></img></Link>
    </div>
  )
}

export default GoBackButton
