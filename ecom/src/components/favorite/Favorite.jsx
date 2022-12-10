import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Modal, Button} from 'react-bootstrap'
import axios from 'axios'
import { Link, Redirect } from "react-router-dom";
import AppURL from '../../api/AppURL'
import cogoToast from 'cogo-toast';

class Favorite extends React.Component {

  constructor()
  {
    super();
    this.state = {
      productData: [],
      isLoading: "",
      mainDiv: "d-none",

    }
  }


  componentDidMount() {

    axios.get(AppURL.FavouriteList(this.props.user.email))
    .then(response => {
      this.setState({
        productData: response.data,
        isLoading: 'd-none',
        mainDiv: ''
      });
    })
    .catch(error => {
      console.log(error);
    });

  }

  PageRefresh = () => {
    if(this.state.PageRefreshStatus === true)
    {
      let URL1 = window.location.href;

      let URLs = URL1.split('/');

      let URL2 = '/' + URLs[5];
      return (
        <Redirect to={URL2} />
      )
    }
  }


  removeItem = (event) => {
    let product_code = event.target.getAttribute('data-code');
    let email = this.props.user.email;

    axios.get(AppURL.RemoveFavourite(product_code, email))
    .then(response => {
      cogoToast.success("Product Removed From Favourites Successfully",{position:'top-right'});
      this.setState({ PageRefreshStatus: true })
    })
    .catch(error => {
      cogoToast.error("Unable to Remove Product From Favourites, Try Again",{position:'top-right'});
    })
  }

  render () {


        if(!localStorage.getItem('token'))
        {
          return <Redirect to="/login" />
        }

    const FavList = this.state.productData;

    const MyView = FavList.map((ProductList,i)=>{
         return <Col key={i.toString()} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6}>
         <Card className="image-box card w-100">
         <img className="center w-75" src={ProductList.image} />
         <Card.Body>
          <Link className="text-link" to={"/productdetails/" + ProductList.product_id }>
         <p className="product-name-on-card">{ProductList.product_name}</p>
         </Link>

           <Button onClick={this.removeItem} data-code={ProductList.product_code} className="btn btn-sm"> <i className="fa fa-trash-alt"></i> Remove </Button>
         </Card.Body>
         </Card>
         </Col>
    });



    return(
      <Fragment>
        <Container className="text-center" fluid={true}>
          <div className="section-title text-center mb-55">
            <h2>MY FAVORITE PRODUCTS</h2>
            <p>Your favorite products</p>
            <Row>

              { MyView }


            </Row>



          </div>
        </Container>
        { this.PageRefresh() }
      </Fragment>
    )
  }
}

export default Favorite;
