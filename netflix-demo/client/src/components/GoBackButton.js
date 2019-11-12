import React from 'react'
import { Link } from 'react-router-dom'

const GoBackButton = () => {
  return (
    <div class="go-back-button">
      <Link to='/'>Back</Link>
    </div>
  )
}

export default GoBackButton
