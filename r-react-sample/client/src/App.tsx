import { useState } from "react";

const App = () => {
  const [rResult, setRResult] = useState<string>("");

  const rApiHandler = async () => {
    try {
      setRResult("");
      const result = await fetch("http://127.0.0.1:7860/");
      setRResult(await result.json());
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <>
      <h1>R Web API (plumber)</h1>
      <h3>{rResult}</h3>
      <button onClick={rApiHandler}>execute</button>
    </>
  );
};

export default App;
