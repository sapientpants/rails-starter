import * as React from 'react';

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

export default Welcome;