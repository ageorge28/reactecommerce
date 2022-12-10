import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, Navbar} from 'react-bootstrap'
import { Link } from "react-router-dom";
import Apple from '../../assets/images/apple.png'
import Google from '../../assets/images/google.png'

class FooterMobile extends React.Component {
  render () {
    return (
      <Fragment>
        <div className="footerback shadow-sm m-0 mt-5 pt-3">
          <Container className="text-center">
            <Row className="px-0 my-5">
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                <h4 className="footer-menu-title">OFFICE ADDRESS</h4>
                <p>165 Franklin Street, Montgomery, Near Sherwood Mall, AL Sherwood 36104
                  <br />
                  Email: support@easylearning.com

                </p>
                <h4 className="footer-menu-title">SOCIAL LINKS</h4>
                <a href=""><i className="fab m-1 h4 fa-facebook"></i></a>
                <a href=""><i className="fab m-1 h4 fa-instagram"></i></a>
                <a href=""><i className="fab m-1 h4 fa-twitter"></i></a>
              </Col>


              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>

                <h4 className="footer-menu-title">DOWNLOAD APPS</h4>
                  <a href=""><img src={Google} /></a><br />
                    <a href=""><img className="mt-2" src={Apple} /></a><br />
              </Col>
            </Row>
          </Container>
          <Container fluid={true} className="text-center m-0 pt-3 pb-1 bg-dark">
            <Container>
              <Row>
                <h6 className="text-white">© Copyright Easy Learning 2022. All Rights Reserved.</h6>
              </Row>
            </Container>
          </Container>
        </div>
      </Fragment>

    )
  }
}

export default FooterMobile;
