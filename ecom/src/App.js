import React, { Fragment } from 'react'
import { BrowserRouter } from "react-router-dom";
import AppRoute from './route/AppRoute';
import {
  Elements,
  CardElement,
} from "@stripe/react-stripe-js";
import { loadStripe } from "@stripe/stripe-js";

class App extends React.Component {

  render () {
    return(
      <Fragment>
        <BrowserRouter  basename={'reactecommerce/ecom'}>
          <AppRoute />
        </BrowserRouter>
      </Fragment>
    )
  }
}

export default App;
