import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, Navbar} from 'react-bootstrap'
import { Link } from "react-router-dom";
import Apple from '../../assets/images/apple.png'
import Google from '../../assets/images/google.png'
import axios from 'axios'
import AppURL from '../../api/AppURL'
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class FooterDesktop extends React.Component {

  constructor()
  {
    super();
    this.state = {
      address: '',
      email: '',
      android: '',
      ios: '',
      facebook: '',
      twitter: '',
      instagram: '',
      copyright: '',
      loaderDiv: '',
      mainDiv: 'd-none'
    }
  }

  componentDidMount() {


    let siteInfoFooter = sessionStorage.getItem('SiteInfoFooter');

    if(siteInfoFooter == null)
    {
      axios.get(AppURL.AllSiteInfo)
      .then(response => {

        let statusCode = response.status;
        if(statusCode == 200)
        {

          let jsonData = response.data;

          this.setState({
            address: jsonData['address'],
            email: jsonData['email'],
            android: jsonData['android'],
            ios: jsonData['ios'],
            facebook: jsonData['facebook'],
            twitter: jsonData['twitter'],
            instagram: jsonData['instagram'],
            copyright: jsonData['copyright'],
            loaderDiv: 'd-none',
            mainDiv: ''
          });

          sessionStorage.setItem('SiteInfoFooter', JSON.stringify(jsonData));
        }
        else
        {
          toast.error('Something went wrong', {theme: "colored"});
        }
      })
      .catch(error => {
        toast.error('Something went wrong', {theme: "colored"});
      });
    }
    else
    {
      let siteInfo = JSON.parse(siteInfoFooter);
      this.setState({
        address: siteInfo['address'],
        email: siteInfo['email'],
        android: siteInfo['android'],
        ios: siteInfo['ios'],
        facebook: siteInfo['facebook'],
        twitter: siteInfo['twitter'],
        instagram: siteInfo['instagram'],
        copyright: siteInfo['copyright'],
        loaderDiv: 'd-none',
        mainDiv: ''
      });
    }
  }

  render () {
    return (
      <Fragment>
        <div className="footerback shadow-sm m-0 mt-5 pt-3">
          <Container>
            <Row className="px-0 my-5">
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>

                <div className={this.state.loaderDiv}>

                  <div className="ph-item">
                    <div className="ph-col-12">
                      <div className="ph-row">
                        <div className="ph-col-4"></div>
                        <div className="ph-col-8 empty"></div>
                        <div className="ph-col-6"></div>
                        <div className="ph-col-6 empty"></div>
                        <div className="ph-col-12"></div>
                        <div className="ph-col-12"></div>
                        <div className="ph-col-12"></div>
                      </div>
                    </div>
                  </div>

                  <div className="ph-item">
                    <div className="ph-col-12">
                      <div className="ph-row">
                        <div className="ph-col-4"></div>
                        <div className="ph-col-8 empty"></div>
                        <div className="ph-col-6"></div>
                        <div className="ph-col-6 empty"></div>
                        <div className="ph-col-12"></div>
                        <div className="ph-col-12"></div>
                        <div className="ph-col-12"></div>
                      </div>
                    </div>
                  </div>

                  <div className="ph-item">
                    <div className="ph-col-12">
                      <div className="ph-row">
                        <div className="ph-col-4"></div>
                        <div className="ph-col-8 empty"></div>
                        <div className="ph-col-6"></div>
                        <div className="ph-col-6 empty"></div>
                        <div className="ph-col-12"></div>
                        <div className="ph-col-12"></div>
                        <div className="ph-col-12"></div>
                      </div>
                    </div>
                  </div>

                </div>
                <div className={this.state.mainDiv}>


                <h4 className="footer-menu-title">OFFICE ADDRESS</h4>

                                  { <div dangerouslySetInnerHTML={{__html: this.state.address}} />}
                  <br />
                  Email: { this.state.email }

                <br />
                <br />
                <h4 className="footer-menu-title">SOCIAL LINKS</h4>
                <a href={this.state.facebook} target="_blank"><i className="fab m-1 h4 fa-facebook"></i></a>
                <a href={this.state.instagram} target="_blank"><i className="fab m-1 h4 fa-instagram"></i></a>
                <a href={this.state.twitter} target="_blank"><i className="fab m-1 h4 fa-twitter"></i></a>
                </div>
              </Col>

              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <div className={this.state.mainDiv}>
                <h4 className="footer-menu-title">THE COMPANY</h4>
                <Link to="/about" className="footer-link">About Us</Link>
                <br />
                <Link to="/companyprofile" className="footer-link">Company Profile</Link>
                <br />
                <Link to="/contact" className="footer-link">Contact Us</Link>
                </div>
              </Col>
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <div className={this.state.mainDiv}>
                <h4 className="footer-menu-title">MORE INFO</h4>
                  <Link to="/purchase" className="footer-link">How To Purchase</Link>
                  <br />
                  <Link to="/privacy" className="footer-link">Privacy Policy</Link>
                  <br />
                  <Link to="/refund" className="footer-link">Refund Policy</Link>
                  </div>
              </Col>
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                <div className={this.state.mainDiv}>
                <h4 className="footer-menu-title">DOWNLOAD APPS</h4>
                  <a href={this.state.android}><img src={Google} /></a><br />
                    <a href={this.state.ios}><img className="mt-2" src={Apple} /></a><br />
                  Change Your Language:
                    <div id="google_translate_element"></div>
</div>
              </Col>
            </Row>
          </Container>
          <Container fluid={true} className="text-center m-0 pt-3 pb-1 bg-dark">
            <Container>
              <Row>
                <h6 className="text-white">{ this.state.copyright }</h6>
              </Row>
            </Container>
          </Container>
        </div>
      </Fragment>
    )
  }
}

export default FooterDesktop;
