import React from 'react';
import Welcome from "./Welcome"

function App(): JSX.Element {
  return (
    <React.StrictMode>
      <Welcome message="Hello, kind user!" />
    </React.StrictMode>
  );
}

export default App