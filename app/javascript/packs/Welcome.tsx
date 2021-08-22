import * as React from 'react';
import * as ReactDOM from 'react-dom';

interface WelcomeProps {
  message: string;
}

const Welcome: React.FC<WelcomeProps> = ({ message }) => {
  return (
    <button className="btn btn-primary" onClick={() => alert(message)}>
      Click on me!
    </button>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Welcome message="Hello, kind user!" />,
    document.getElementById('welcome-button')
  )
})