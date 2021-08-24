import React from 'react';
import ReactDOM from 'react-dom';
import App from "./App";
import "./application.scss"

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.StrictMode>
      <App />
    </React.StrictMode>,
    document.getElementById('root')
  );
});