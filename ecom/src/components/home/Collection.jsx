import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import axios from 'axios'
import AppURL from '../../api/AppURL'
import CollectionLoading from '../placeholder/CollectionLoading'
import { Link } from "react-router-dom";

class Collection extends React.Component {

  constructor()
  {
    super();
    this.state = {
      productData: [],
      isLoading: "",
      mainDiv: "d-none"
    }
  }

  componentDidMount() {

    axios.get(AppURL.ProductListByRemark("COLLECTION"))
    .then(response => {
      this.setState({
        productData: response.data,
        isLoading: "d-none",
        mainDiv: ""
      });
    })
    .catch(error => {
      console.log(error);
    });

  }

  render () {

    const CollectionList = this.state.productData;
    const MyView = CollectionList.map((CollectionList, i) => {


      if(CollectionList.special_price == null || CollectionList.special_price == 0)
      {
        return(
          <Col key={i.toString()} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6} >
              <Link className="text-link" to={"/productdetails/" + CollectionList.id }>
            <Card className="image-box card w-100">
              <img className="center w-75" src={CollectionList.image} />
              <Card.Body>
                <p className="product-name-on-card">{CollectionList.title}</p>
                <p className="product-price-on-card">Price: {CollectionList.price}$</p>
              </Card.Body>
            </Card>
          </Link>

          </Col>
        )
      }
      else {
        return(
          <Col key={i.toString()} className="p-0" xl={3} lg={3} md={3} sm={6} xs={6} >
              <Link className="text-link" to={"/productdetails/" + CollectionList.id }>
            <Card className="image-box card w-100">
              <img className="center w-75" src={CollectionList.image} />
              <Card.Body>
                <p className="product-name-on-card">{CollectionList.title}</p>
                <p className="product-price-on-card">Price:  <strike className="text-secondary">{ CollectionList.price } $</strike>&nbsp; { CollectionList.special_price } $</p>
              </Card.Body>
            </Card>
          </Link>

          </Col>
        )
      }
    })

    return(
      <Fragment>
        <Container className="text-center" fluid={true}>
          <div className="section-title text-center mb-55">
            <h2>PRODUCT COLLECTION</h2>
            <p>Our various products</p>

            <CollectionLoading isLoading={this.state.isLoading} />
            <div className={this.state.mainDiv}>
              <Row>

                {MyView}

              </Row>

            </div>

          </div>
        </Container>
      </Fragment>
    )
  }
}



export default Collection;
