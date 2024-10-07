import React, { useEffect, useState } from 'react';
import ReactDOM from 'react-dom';

const App = () => {
  const [message, setMessage] = useState('');

  useEffect(() => {
    // Fetch from .NET API
    fetch('https://dotnet-app-service') // Use service name in Kubernetes
      .then((response) => response.text())
      .then((data) => setMessage(data))
      .catch((error) => console.error('Error fetching data:', error));
  }, []);

  return (
    <div>
      <h1>This is my react app - JaegEr</h1>
      <p>{message}</p>
    </div>
  );
};

ReactDOM.render(<App />, document.getElementById('root'));