import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, Navbar} from 'react-bootstrap'
import Logo from '../../assets/images/easyshop.png'
import Bars from '../../assets/images/bars.png'
import {
  BrowserRouter,
  Routes,
  Route,
  Link
} from "react-router-dom";
import MegaMenuMobile from '../home/MegaMenuMobile';
import axios from 'axios'
import AppURL from '../../api/AppURL'


class NavMenuMobile extends React.Component {

  constructor()
  {
    super();
    this.state = {
      SideNavState: "sideNavClose",
      ContentOverState: "ContentOverlayClose",
      MenuData: [],
      cartCount: 0
    }
  }

  componentDidMount() {

    axios.get(AppURL.AllCategoryDetails)
    .then(response => {
      this.setState({
        MenuData: response.data
      });
    })
    .catch(error => {
      console.log(error);
    });


    let product_code = this.props.product_code;
    axios.get(AppURL.CartCount(product_code))
    .then(response => {
      this.setState({cartCount: response.data});
    })
    .catch(error => {
      console.log(error);
    })

  }

  componentDidUpdate(prevProps, prevState) {
    if(prevState.SideNavState == "sideNavOpen" )
    {
      this.setState({
        SideNavState: "sideNavClose",
        ContentOverState: "ContentOverlayClose"
      });
    }
  }

  MenuBarClickHandler = () => {
    this.SideNavOpenClose();
  }

  ContentOverlayClickHandler = () => {
    this.SideNavOpenClose();
  }

  SideNavOpenClose = () => {
    let SideNavState = this.state.SideNavState;
    let ContentOverState = this.state.ContentOverState;
    if(SideNavState === "sideNavOpen")
    {
      this.setState({
        SideNavState: "sideNavClose",
        ContentOverState: "ContentOverlayClose"
      });
    }
    else
    {
      this.setState({
        SideNavState: "sideNavOpen",
        ContentOverState: "ContentOverlayOpen"
      });
    }
  }

  render () {
    return (
      <Fragment>
        <div className="TopSectionDown">

          <Container fluid={"true"} className="fixed-top shadow-sm p-2 mb-0 bg-white">
            <Row>

              <Col lg={4} md={4} sm={12} xs={12}>

                <img onClick={this.MenuBarClickHandler} className="bar-img" src={ Bars } />

                <Link to="/"><img className="nav-logo" src={Logo} /></Link>

                <Button className="cart-btn"><i className="fa fa-shopping-cart"></i>&nbsp; {this.state.cartCount} items</Button>

              </Col>


            </Row>
          </Container>

          <div className={this.state.SideNavState}>
            <MegaMenuMobile data={this.state.MenuData} />
          </div>

          <div onClick={this.ContentOverlayClickHandler} className={this.state.ContentOverState}>


          </div>

        </div>
      </Fragment>
    )
  }
}

export default NavMenuMobile;
