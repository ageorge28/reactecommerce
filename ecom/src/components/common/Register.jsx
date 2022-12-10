import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import Login from '../../assets/images/login.png'
import { Link, Redirect } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'

class Register extends React.Component {

  constructor()
  {
    super();
    this.state={
      name: '',
      email: '',
      password: '',
      password_confirmation: '',
      message: '',
      loggedIn: false
    }
  }

  // Register Method

  formSubmit = (e) => {

    e.preventDefault();

    const data = {
      name: this.state.name,
      email: this.state.email,
      password: this.state.password,
      password_confirmation: this.state.password_confirmation
    }

    axios.post(AppURL.UserRegister, data)
    .then(response => {
      localStorage.setItem('token', response.data.token);
      this.setState({
        loggedIn: true
      });
      this.props.setUser(response.data.user);
    })
    .catch(error => {

    });
  }


  render () {

    if(localStorage.getItem('token'))
    {
      return <Redirect to="/userprofile" />
    }


    // After log in redirect to Profile Page
    if(this.state.loggedIn)
    {
      return <Redirect to={'/userprofile'} />
    }

    return (
      <Fragment>
        <Container>
          <Row className="p-2">
            <Col className="shadow-sm bg-white mt-2" md={12} lg={12} sm={12} xs={12}>
              <Row className="text-center">
                <Col className="d-flex justify-content-center" md={6} lg={6} sm={12} xs={12}>

                  <form className="onboardForm" onSubmit={this.formSubmit}>

                    <h4 className="section-title-login">USER REGISTRATION</h4>

                      <input type="text" className="form-control m-2" onChange={ (e) => this.setState({ name: e.target.value }) } placeholder="Enter Name" />

                      <input type="email" onChange={ (e) => this.setState({ email: e.target.value }) } className="form-control m-2" placeholder="Enter Email" />

                      <input type="password" className="form-control m-2" onChange={ (e) => this.setState({ password: e.target.value }) } placeholder="Enter Password" />

                      <input type="password" className="form-control m-2" onChange={ (e) => this.setState({ password_confirmation: e.target.value }) } placeholder="Confirm Password" />

                    <Button type="submit" className="btn btn-block m-2 site-btn-login">Sign Up</Button>

                    <br /> <br />

                    <hr />

                    <p>
                      <b>Forgot password? <Link to="/forgot">Forgot Password</Link></b>
                    </p>

                    <p>
                      <b>Already have an account? <Link to="/login">Log In</Link></b>
                    </p>


                  </form>


                </Col>
                <Col className="p-0 m-0 Desktop" md={6} lg={6} sm={6} xs={6}>
                  <img className="onboardBanner" src={Login} />
                </Col>
              </Row>
            </Col>
          </Row>
        </Container>
      </Fragment>
    )
  }
}

export default Register;
