// import { useState } from 'react';
// import reactLogo from './assets/react.svg'
// import viteLogo from '/vite.svg'
import './App.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import { Initial } from './pages/Initial';
import { Second } from './pages/Second';

function App() {
  // const [count, setCount] = useState(0);
  // comment

  return (
    <>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<Initial />} />
          <Route path='/second' element={<Second />} />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
