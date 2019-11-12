import React from 'react'
import Item from './Item'
import JawboneContent from './Jawbone/JawboneContent'
import Collapsible from './Collapsible'

const ContentRow = ({movies}) => {


  const moviesRows = () => movies.map(movie =>
    <
    Item
    key={movie.id}
    id={movie.id}
    name={movie.name}
    plot={movie.plot}
    poster={movie.poster}
    />
  )

  return (
    <div className="content-row">
      {moviesRows()}
    </div>
  )
}

export default ContentRow
