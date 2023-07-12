import React from 'react';
import logo from './logo.svg';
import './App.css';
import AppBar from './components/AppBar';

function App() {
  return (
    <div className="App">
      <AppBar />
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
      </header>
    </div>
  );
}

export default App;
