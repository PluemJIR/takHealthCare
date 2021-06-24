import './App.css';
import React, {useState} from 'react'
import PrivateRoutes from './private-routes/PrivateRoutes';
import localStorageService from './services/localStorageService'

function App() {
  const [role, setRole] = useState(localStorageService.getRole())

  return (
    <PrivateRoutes role={role} setRole={setRole}></PrivateRoutes>
  );
}

export default App;
