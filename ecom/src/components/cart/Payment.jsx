import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import { Link, Redirect } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import cogoToast from 'cogo-toast';
import CheckoutForm from "./CheckoutForm";
import {
  Elements,
  ElementsConsumer,
  CardElement,
  useElements,
  useStripe
} from "@stripe/react-stripe-js";
import { loadStripe } from "@stripe/stripe-js";


class Payment extends React.Component {

  constructor(props)
  {
    super();
    this.state = {
      order: null,
    }
  }

  componentDidMount() {
    this.setState({
      order: this.props.order,
    })
  }

  render () {


    if(!localStorage.getItem('token'))
    {
      return <Redirect to="/login" />
    }

    const stripePromise = loadStripe(
      "pk_test_RWtYPrnGLP5ahS9dRehRlMSr00jnGv7gTC"
    );

    return(
      <Fragment>
        <div className="section-title text-center mb-55"><h2>PAYMENT</h2></div>

        <Container>

          <Row className="payment">

            <Col lg={6} md={6} sm={12}>

              <Elements stripe={stripePromise}>
                <ElementsConsumer>
                  {(ctx: any) => <CheckoutForm order={this.state.order} {...ctx} />}
                </ElementsConsumer>
              </Elements>

            </Col>

          </Row>

        </Container>

      </Fragment>
    );
  }
}

export default Payment;
