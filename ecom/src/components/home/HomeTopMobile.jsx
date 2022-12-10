import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Button} from 'react-bootstrap'
import MegaMenuMobile from './MegaMenuMobile'
import HomeSlider from './HomeSlider'
import axios from 'axios'
import AppURL from '../../api/AppURL'

class HomeTopMobile extends React.Component {

  constructor()
  {
    super();
    this.state = {
      SliderData: []
    }
  }

  componentDidMount() {

    axios.get(AppURL.AllSliders)
    .then(response => {
      this.setState({
        SliderData: response.data
      });
    })
    .catch(error => {
      console.log(error);
    });

  }

  render () {
    return (
      <Fragment>
        <Container className="p-0 m-0 overflow-hidden" fluid={true}>
          <Row className="p-0 m-0 overflow-hidden" >
            <Col lg={12} md={12} sm={12}>
              <HomeSlider data={this.state.SliderData}/>
            </Col>
          </Row>
        </Container>
      </Fragment>
    )
  }
}

export default HomeTopMobile;
