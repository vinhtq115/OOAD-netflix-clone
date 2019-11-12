import React,{useState, useEffect} from 'react'
import { Switch, Route } from 'react-router-dom'
import MyList from './MyList'
import VideoPlayer from './VideoPlayer'
import moviesService from '../service/movie'

const Main = () => {
  return (
    <main>
      <Switch>
        <Route exact path='/' component={MyList}/>
        <Route path='/watch' component={VideoPlayer}/>
      </Switch>
    </main>
  )
}

export default Main
