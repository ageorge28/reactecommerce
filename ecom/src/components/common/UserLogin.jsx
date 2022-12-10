import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import Login from '../../assets/images/login.png'
import { Link, Redirect } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class UserLogin extends React.Component {

  constructor()
  {
    super();
    this.state={
      email: '',
      password: '',
      message: '',
      loggedIn: false
    }
  }

  formSubmit = (e) => {

    e.preventDefault();
    const data = {
      email: this.state.email,
      password: this.state.password
    }

    axios.post(AppURL.UserLogin, data)
    .then(response => {
      localStorage.setItem('token', response.data.token);
      this.setState({
        loggedIn: true
      });
      this.props.setUser(response.data.user);
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

                  <form className="onboardForm" onSubmit={this.formSubmit} >

                    <h4 className="section-title-login">USER SIGN IN</h4>

                      <input type="email" onChange={ (e) => this.setState({ email: e.target.value }) } className="form-control m-2" placeholder="Enter Email" />

                      <input type="password" onChange={ (e) => this.setState({ password: e.target.value }) } className="form-control m-2" placeholder="Enter Password" />

                      <Button type="submit" className="btn btn-block m-2 site-btn-login">Login</Button>

                      <br /> <br />

                      <hr />

                      <p>
                        <b>Forgot password? <Link to="/forgot">Forgot Password</Link></b>
                      </p>

                      <p>
                        <b>Don't have an account? <Link to="/register">Register</Link></b>
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
        <ToastContainer />
      </Fragment>
    )
  }
}

export default UserLogin;
