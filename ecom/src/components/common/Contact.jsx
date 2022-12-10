import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, Form} from 'react-bootstrap'
import validation from '../../validation/validation'
import axios from 'axios'
import AppURL from '../../api/AppURL'
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class Contact extends React.Component {

  constructor()
  {
    super();
    this.state = {
      name: '',
      email: '',
      message: ''
    }
  }

  nameOnChange = (event) => {
    let name = event.target.value;
    this.setState({name: name});
  }

  emailOnChange = (event) => {
    let email = event.target.value;
    this.setState({email: email});
  }

  messageOnChange = (event) => {
    let message = event.target.value;
    this.setState({message: message});
  }

  onFormSubmit = (event) => {

        event.preventDefault();

    let name = this.state.name;
    let email = this.state.email;
    let message = this.state.message;

    let sendBtn = document.getElementById('sendBtn');
    let contactForm = document.getElementById('contactForm');


    if(message.length == 0)
    {
      toast.error('Please enter your message', {theme: "colored"});
    }
    else if (name.length == 0)
    {
      toast.error('Please enter your name', {theme: "colored"});
    }
    else if (email.length == 0)
    {
      toast.error('Please enter your email', {theme: "colored"});
    }
    else if(!(validation.NameRegEx).test(name))
    {
      toast.error('Invalid name', {theme: "colored"});
    }
    else
    {
      sendBtn.innerHTML = 'Sending ...';

      let MyFormData = new FormData();
      MyFormData.append('name', name);
      MyFormData.append('email', email);
      MyFormData.append('message', message);

      axios.post(AppURL.ContactPost, MyFormData)
      .then(function (response) {
        if(response.status == 200 && response.data == 1)
        {
          toast.success('Contact Form Submitted Succesfully', {theme: "colored"});
          sendBtn.innerHTML = 'Send';
          contactForm.reset();
        }
        else
        {
          toast.error('Error', {theme: "colored"});
          sendBtn.innerHTML = 'Send';
        }
      })
      .catch(function (error) {
        toast.error(error, {theme: "colored"});
      });
    }



  }

  render () {
    return (
      <Fragment>
        <Container>
          <Row className="p-2">
            <Col className="shadow-sm bg-white mt-2" md={12} lg={12} sm={12} xs={12}>
              <Row className="text-center">
                <Col className="d-flex justify-content-center" md={6} lg={6} sm={12} xs={12}>

                  <form id="contactForm" className="onboardForm" onSubmit={this.onFormSubmit}>
                    <h4 className="section-title-login">CONTACT US</h4>
                    <h6 className="section-subtitle">Please enter your contact details</h6>
                    <input type="text" className="form-control m-2" placeholder="Enter Name" onChange={ this.nameOnChange } />
                    <input type="email" className="form-control m-2" placeholder="Enter Email Address" onChange={this.emailOnChange} />
                    <Form.Control className="form-control m-2" placeholder="Enter Message" as="textarea" rows={3} onChange={this.messageOnChange} />

                    <Button id="sendBtn" type="submit" className="btn btn-block m-2 site-btn-login">Send</Button>
                  </form>


                </Col>
                <Col className="p-0 m-0 Desktop" md={6} lg={6} sm={6} xs={6}>
                  <br />
                  <p className="section-title-contact">

                    165 Franklin Street, Montgomery, Near Sherwood Mall, AL Sherwood 36104
                    <br />
                    Email: support@easylearning.com
                  </p>
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2895475143!2d-74.26055344934535!3d40.69766840624806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2skw!4v1648975035834!5m2!1sen!2skw" width="600" height="450" styles="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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

export default Contact;
