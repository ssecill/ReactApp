import React from "react";
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  useParams
} from "react-router-dom";

export default function ParamsExample() {
  return (
    <Router>
      <div>
            <Link to="/secill"></Link>
        <Switch>
          <Route path="/:id" children={<Child />} />
        </Switch>
      </div>
    </Router>
  );
}

function Child() {
  // We can use the `useParams` hook here to access
  // the dynamic pieces of the URL.
  let { id } = useParams();

  return (
   <div className="App">
      <header className="App-header">
    <div>
      <h3>SECIL</h3>
    </div>
	      </header>
	 </div>
  );
}
