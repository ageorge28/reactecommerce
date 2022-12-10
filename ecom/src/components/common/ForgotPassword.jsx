import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import Forgot from '../../assets/images/forget.jpg'
import { Link, Redirect } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class ForgotPassword extends React.Component {

  constructor()
  {
    super();
    this.state={
      email: '',
      message: '',
    }
  }

  formSubmit = (e) => {

    e.preventDefault();

    const data = {
      email: this.state.email
    }

    axios.post(AppURL.UserForgotPassword, data)
    .then(response => {
      console.log(response.data.message);
      this.setState({ message: response.data.message});
      toast.success(this.state.message, {theme: "colored"});
    })
    .catch(error => {
      console.log(error);
      this.setState({ message: error.response.data.message });
      toast.error(this.state.message, {theme: "colored"});
    });
  }

  render () {

    if(localStorage.getItem('token'))
    {
      return <Redirect to="/userprofile" />
    }

    return (
      <Fragment>
        <Container>
          <Row className="p-2">
            <Col className="shadow-sm bg-white mt-2" md={12} lg={12} sm={12} xs={12}>
              <Row className="text-center">
                <Col className="d-flex justify-content-center" md={6} lg={6} sm={12} xs={12}>

                  <form className="onboardForm" onSubmit={this.formSubmit}>

                    <h4 className="section-title-login">FORGOT PASSWORD?</h4>

                    <input type="email" onChange={ (e) => this.setState({ email: e.target.value }) } className="form-control m-2" placeholder="Enter Email" />

                    <Button type="submit" className="btn btn-block m-2 site-btn-login">Reset Password</Button>
                    <br /> <br />

                    <hr />

                    <p>
                      <b>Have an account? <Link to="/login">Login</Link></b>
                    </p>

                    <p>
                      <b>Don't have an account? <Link to="/register">Register</Link></b>
                    </p>

                  </form>


                </Col>
                <Col className="p-0 m-0 Desktop" md={6} lg={6} sm={6} xs={6}>
                  <img className="onboardBanner" src={Forgot} />
                </Col>
              </Row>
            </Col>
          </Row>
        </Container>
        <ToastContainer />
      </Fragment>
    )
  }
}

export default ForgotPassword;
