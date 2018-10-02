import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

Phase 1: Logging
const addLoggingToDispatch = (store) => {
const OldDispatch = store.dispatch;
return (action) => {
console.log(store.getState()); // prints old state
console.log(action); // prints action
OldDispatch(action); // performs action
console.log(store.getState()); //prints new state
}
}

Phase 2: Refactoring (without Using Redux applyMiddleware)
const addLoggingToDispatch = store => next => action => {
console.log(store.getState()); //old state
console.log(action); // action
next(action); //perform action
console.log(store.getState()); //new state
};

const applyMiddlewares = (store, ...middlewares) => {
let dispatch = store.dispatch;
middlewares.forEach((middleware) => {
dispatch = middleware(store)(dispatch);
});
return Object.assign({}, store, { dispatch }); //merges the two together without mutating
};

}
