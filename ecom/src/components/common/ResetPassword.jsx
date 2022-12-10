import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import Forgot from '../../assets/images/forget.jpg'
import { Link, Redirect } from "react-router-dom";
import axios from 'axios';
import AppURL from '../../api/AppURL';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class ResetPassword extends React.Component {

  constructor(props)
  {
    super();
    this.state={
      token: '',
      email: '',
      password: '',
      password_confirmation: '',
      message: '',
    }

  }

  componentDidMount() {
    this.setState({
      token: this.props.token
    })
  }

  // Reset Form Submit

  formSubmit = (e) => {

    e.preventDefault();

    const data = {
      token: this.state.token,
      email: this.state.email,
      password: this.state.password,
      password_confirmation: this.state.password_confirmation
    }

    axios.post(AppURL.UserResetPassword, data)
    .then(response => {
      console.log(response.data.message);
      this.setState({ message: response.data.message});
      toast.success(this.state.message, {theme: "colored"});
      this.setState({
        token: '',
      })
      document.getElementById('formReset').reset();
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

                  <form className="onboardForm" onSubmit={this.formSubmit} id="formReset">

                    <h4 className="section-title-login">RESET PASSWORD</h4>

                    <input type="text" className="form-control m-2" value={this.state.token} onChange={ (e) => this.setState({ token: e.target.value }) }placeholder="Enter Pin Code" />

                    <input type="email" onChange={ (e) => this.setState({ email: e.target.value }) } className="form-control m-2" placeholder="Enter Email" />

                    <input type="password" onChange={ (e) => this.setState({ password: e.target.value }) } className="form-control m-2" placeholder="Enter New Password" />

                    <input type="password" onChange={ (e) => this.setState({ password_confirmation: e.target.value }) } className="form-control m-2" placeholder="Confirm New Password" />

                    <Button type="submit" className="btn btn-block m-2 site-btn-login">Reset Password</Button>

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

export default ResetPassword;
