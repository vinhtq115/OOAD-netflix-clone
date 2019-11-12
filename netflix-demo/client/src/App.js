import React, {useState, useEffect} from 'react';
import Main from './components/Main'
import Header from './components/Header'
import Footer from './components/Footer'
import './App.css';

const App = () => {

  return (
    <div className="background">
      <Header/>
      <Main/>
      <Footer/>
    </div>
  )
}
export default App;
