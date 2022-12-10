import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, Navbar} from 'react-bootstrap'
import Logo from '../../assets/images/easyshop.png'
import Bars from '../../assets/images/bars.png'
import { Link, Redirect } from "react-router-dom";
import MegaMenuAll from '../home/MegaMenuAll'
import axios from 'axios'
import AppURL from '../../api/AppURL'

class NavMenuDesktop extends React.Component {

  constructor()
  {
    super();
    this.state = {
      SideNavState: "sideNavClose",
      ContentOverState: "ContentOverlayClose",
      MenuData: [],
      Searchkey: '',
      SearchRedirectStatus: false,
      cartCount: 0,
      favouriteCount: 0
    }
    this.SearchOnChange = this.SearchOnChange.bind(this);
    this.SearchOnClick = this.SearchOnClick.bind(this);
    // this.SearchRedirect = this.SearchRedirect.bind(this);
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

    if(this.props.user)
    {
      let email = this.props.user.email;

      axios.get(AppURL.CartCount(email))
      .then(response => {
        this.setState({cartCount: response.data});
      })
      .catch(error => {
        console.log(error);
      })

      axios.get(AppURL.FavouriteCount(email))
      .then(response => {
        this.setState({favouriteCount: response.data});
      })
      .catch(error => {
        console.log(error);
      })
    }
  }

  logout = () => {
    localStorage.clear();
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

  SearchOnChange(event)
  {
    let Searchkey = event.target.value;
    this.setState({
      Searchkey: Searchkey
    });
  }

  SearchOnClick()
  {
    if(this.state.Searchkey.length >= 2)
    {
      this.setState({ SearchRedirectStatus: true });
      // this.SearchRedirect();
    }
  }

  SearchRedirect()
  {
    if(this.state.SearchRedirectStatus === true)
    {
      this.setState({ SearchRedirectStatus: false });
      return <Redirect to={"/search/" + this.state.Searchkey} />
    }
  }

  render () {

    let buttons;
    if(localStorage.getItem('token'))
    {
      buttons = (
        <div>
          <Link to="/favorite" className="btn">
            <i className="fa h4 fa-heart"></i><sup><span className="badge text-white bg-danger">{ this.state.favouriteCount }</span></sup>
          </Link>

          <a className="btn"><i className="fa h4 fa-mobile-alt"></i></a>

          <Link to="/userprofile" className="h4 btn">PROFILE</Link>
          <Link to="/" onClick={this.logout} className="h4 btn">LOGOUT</Link>
          <Link to="/cart" className="cart-btn"><i className="fa fa-shopping-cart"></i>&nbsp; {this.state.cartCount} items</Link>
        </div>
      )
    }
    else
    {
      buttons = (
        <div>
          <Link to="/favorite" className="btn">
            <i className="fa h4 fa-heart"></i><sup><span className="badge text-white bg-danger">0</span></sup>
          </Link>

          <a className="btn"><i className="fa h4 fa-mobile-alt"></i></a>
          <Link to="/login" className="h4 btn">LOGIN</Link>
          <Link to="/register" className="h4 btn">REGISTER</Link>
          <Link to="/cart" className="cart-btn"><i className="fa fa-shopping-cart"></i>&nbsp; 0 items</Link>
        </div>
      )
    }

    return (
      <Fragment>
        <div className="TopSectionDown">
          <Navbar className="navbar" fixed={"top"} bg="light">
            <Container fluid={"true"} className="fixed-top shadow-sm p-2 mb-0 bg-white">
              <Row>

                <Col lg={4} md={4} sm={12} xs={12}>
                  <img onClick={this.MenuBarClickHandler} className="bar-img" src={ Bars } />
                  <Link to="/"><img className="nav-logo" src={Logo} /></Link>
                </Col>

                <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                  <div className="input-group w-100">
                    <input onChange={this.SearchOnChange} type="text" className="form-control" />
                    <Button onClick={this.SearchOnClick} type="button" className="btn site-btn"><i className="fa fa-search"></i></Button>
                  </div>
                </Col>

                <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                  { buttons }
                </Col>

              </Row>

            </Container>

            { this.SearchRedirect() }

          </Navbar>
        </div>

        <div className={this.state.SideNavState}>
          <MegaMenuAll data={this.state.MenuData} />
        </div>

        <div onClick={this.ContentOverlayClickHandler} className={this.state.ContentOverState}>

        </div>

      </Fragment>
    )
  }
}

export default NavMenuDesktop;
