import React from 'react'
import MenuText from './MenuText'
import SubHeader from './SubHeader'

const Header = () => {
  const mystyle = {
      height: "10px",
      width: "100%",
    };

  return (
    <div className="header">
      <div className="first-header-wrapper">
        <img src={'/netflixlogo.png'} alt="netlfix logo" className="logo"/>
        <ul className="tabbed-primary-navigation">
          <li className="navigation-tab"><MenuText text="Home"/></li>
          <li className="navigation-tab"><MenuText text="Tv Shows"/></li>
          <li className="navigation-tab"><MenuText text="Movies"/></li>
          <li className="navigation-tab"><MenuText text="Recently Added"/></li>
          <li className="navigation-tab"><MenuText text="My List"/></li>
        </ul>
      </div>
      <div style={mystyle}></div>
      <SubHeader text="My List"/>
    </div>
  )
}


export default Header
