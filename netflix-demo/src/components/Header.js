import React from 'react'
import MenuText from './MenuText'

const Header = () => {

  return (
    <div className="header">
      <img src={'/netflixlogo.png'} alt="netlfix logo" className="logo"/>
      <ul className="tabbed-primary-navigation">
        <li className="navigation-tab"><MenuText text="Home"/></li>
        <li className="navigation-tab"><MenuText text="Tv Shows"/></li>
        <li className="navigation-tab"><MenuText text="Movies"/></li>
        <li className="navigation-tab"><MenuText text="Recently Added"/></li>
        <li className="navigation-tab"><MenuText text="My List"/></li>
      </ul>
    </div>
  )
}


export default Header
