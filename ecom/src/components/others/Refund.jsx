import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import axios from 'axios'
import AppURL from '../../api/AppURL'
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import Breadcrumb from 'react-bootstrap/Breadcrumb'
import { Routes, Route, Link } from "react-router-dom";

class Refund extends React.Component {

  constructor()
  {
    super();
    this.state = {
      refund: '',
      loaderDiv: '',
      mainDiv: 'd-none'
    }
  }

  componentDidMount() {

    let siteInfoRefund = sessionStorage.getItem('SiteInfoRefund');

    if(siteInfoRefund == null)
    {
      axios.get(AppURL.AllSiteInfo)
      .then(response => {
        let statusCode = response.status;
        if(statusCode === 200)
        {
          let jsonData = response.data['refund'];
          this.setState({
            refund: jsonData,
            loaderDiv: 'd-none',
            mainDiv: ''
          });
          sessionStorage.setItem('SiteInfoRefund', jsonData);
        }
        else
        {
          toast.error('Something went wrong', {theme: "colored"});

        }
      })
      .catch(error => {
        toast.error('Something went wrong', {theme: "colored"});

      })
    }
    else {
      this.setState({
        refund: siteInfoRefund,
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
            <Breadcrumb.Item><Link to="/refund">
              Refund Policy
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
              <h4 className="section-title-login">Refund Policy</h4>
              <br />
              { <div dangerouslySetInnerHTML={{__html: this.state.refund}} />}
            </div>
            </Col>
          </Row>
        </Container>
      </Fragment>
    )
  }
}

export default Refund;
