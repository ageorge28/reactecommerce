import React, {Component, Fragment} from 'react'
import {
  Elements,
  ElementsConsumer,
  CardElement,
  useElements,
  useStripe
} from "@stripe/react-stripe-js";
import { loadStripe } from "@stripe/stripe-js";
import { Link, Redirect } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import cogoToast from 'cogo-toast';


export default class CheckoutForm extends React.Component<any> {

  constructor(props)
  {
    super();
    this.state ={
      PageRedirectStatus: false,
    }
  }


  PageRedirect = () => {
    if(this.state.PageRedirectStatus === true)
    {
      return (
        <Redirect to="/order" />
      )
    }
  }

  handleSubmit = async () => {
    const { elements, stripe } = this.props;
    const cardElement = elements.getElement(CardElement);

    const {error, paymentMethod} = await stripe.createPaymentMethod({
      type: 'card',
      card: cardElement,
    });

    if (error) {
      console.log('[error]', error);
      cogoToast.error("Payment Failed",{position:'top-right'});
      this.setState({ PageRedirectStatus: false });

    } else {

      console.log('[PaymentMethod]', paymentMethod, this.props.order);

      axios.get(AppURL.OrderPaid(this.props.order))
      .then(response => {
        if(response.data == 1)
        {
          cogoToast.success("Payment Successful",{position:'top-right'});
          this.setState({ PageRedirectStatus: true });
        }
        else
        {
          cogoToast.error("Unable to update payment status",{position:'top-right'});
          this.setState({ PageRedirectStatus: false });
        }
      })
      .catch(error => {
        console.log(error);
      });

      // ... SEND to your API server to process payment intent
    }
  };

  render() {
    return (
      <>
      <h6>Enter your card details below:</h6>
      <br />
      <CardElement />
      <br />
      <button onClick={this.handleSubmit}>Pay</button>      
      { this.PageRedirect() }
      </>
  );
}
}
