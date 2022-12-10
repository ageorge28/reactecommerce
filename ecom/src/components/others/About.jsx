import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import axios from 'axios'
import AppURL from '../../api/AppURL'
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import Breadcrumb from 'react-bootstrap/Breadcrumb'
import { Link } from "react-router-dom";

class About extends React.Component {

  constructor()
  {
    super();
    this.state = {
      about: '',
      loaderDiv: '',
      mainDiv: 'd-none'
    }
  }

  componentDidMount() {

    let siteInfoAbout = sessionStorage.getItem('SiteInfoAbout');
    if(siteInfoAbout == null)
    {
      axios.get(AppURL.AllSiteInfo)
      .then(response => {

        let statusCode = response.status;
        if(statusCode == 200)
        {
          let jsonData = response.data['about'];
          this.setState({
            about: jsonData,
            loaderDiv: 'd-none',
            mainDiv: ''
          });
          sessionStorage.setItem('SiteInfoAbout', jsonData);
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
      this.setState({
        about: siteInfoAbout,
        loaderDiv: 'd-none',
        mainDiv: ''
      });
    }
  }

  render () {
    return(
      <Fragment>
        <Container>

          <div className="breadBody">
            <Breadcrumb>
              <Breadcrumb.Item><Link to="/">Home</Link></Breadcrumb.Item>
              <Breadcrumb.Item><Link to="/about">
                About
              </Link>
            </Breadcrumb.Item>

          </Breadcrumb>
        </div>

        <Row className="p-2">
          <Col className="shadow-sm bg-white mt-2" md={12} lg={12} sm={12} xs={12}>

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
              <h4 className="section-title-login">About Us</h4>
              <br />
              { <div dangerouslySetInnerHTML={{__html: this.state.about}} />}
            </div>
          </Col>
        </Row>
      </Container>
    </Fragment>
  )
}
}

export default About;
