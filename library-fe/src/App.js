import React, { Component } from 'react';
import { BrowserRouter } from 'react-router-dom';
import { Provider } from 'react-redux';
import storage from 'redux-persist/lib/storage'
import { persistStore, persistReducer } from 'redux-persist'
import { PersistGate } from 'redux-persist/integration/react'


import Switch from './components/navigation/Switch';
import UpperMenu from './components/navigation/UpperMenu';

import { createStore } from 'redux';

import Reducer from './Reducer'; 

import './App.css';

const persistConfig = {
  key: 'root',
  storage,
}

const persistedReducer = persistReducer(persistConfig, Reducer)

const store = createStore(persistedReducer, { authToken: null });
const persistor = persistStore(store)

class App extends Component {

  render() {

    return (
      <Provider store={store}>
        <PersistGate loading={null} persistor={persistor}>
          <BrowserRouter>

            <UpperMenu></UpperMenu>

            <div className="container">

              <div className="App">
                <main role="main" className="inner cover">
                  <Switch></Switch>
                </main>
              </div>

              <footer className="pt-4 my-md-5 pt-md-5 border-top">
                <div className="row">
                  <div className="col-12 col-md">
                    <small className="d-block mb-3 text-muted">adrian&copy; 2017-2022</small>
                  </div>
                </div>
              </footer>

            </div>

          </BrowserRouter>
        </PersistGate>
      </Provider>
    );
  }
}

export default App;
