import React, { Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import { Link } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import FeaturedLoading from '../placeholder/FeaturedLoading'

class FeaturedProducts extends React.Component {

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

      axios.get(AppURL.ProductListByRemark("FEATURED"))
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

  render () {

    const FeaturedList = this.state.productData;
    const MyView = FeaturedList.map((FeaturedList, i) => {


      if(FeaturedList.special_price == null || FeaturedList.special_price == 0)
      {
        return(

            <Col key={i.toString()} xl={2} lg={2} sm={4} xs={6}>
              <Link className="text-link" to={"/productdetails/" + FeaturedList.id }>
              <Card className="image-box card">
                <img className="center" src={FeaturedList.image} />
                <Card.Body>
                  <p className="product-name-on-card">{ FeaturedList.title }</p>
                  <p className="product-price-on-card">Price: { FeaturedList.price } $</p>
                </Card.Body>
              </Card>
              </Link>

            </Col>

        )
      }
      else
      {
        return(

            <Col key={i.toString()} xl={2} lg={2} sm={4} xs={6}>
              <Link className="text-link" to={"/productdetails/" + FeaturedList.id }>
              <Card className="image-box card">
                <img className="center" src={FeaturedList.image} />
                <Card.Body>
                  <p className="product-name-on-card">{ FeaturedList.title }</p>
                  <p className="product-price-on-card">Price:  <strike className="text-secondary">{ FeaturedList.price } $</strike>&nbsp; { FeaturedList.special_price } $</p>
                </Card.Body>
              </Card>
              </Link>

            </Col>

        )
      }

    })



    return (
      <Fragment>



        <Container className="text-center" fluid={true}>
          <div className="section-title text-center mb-55">
            <h2>FEATURED PRODUCTS</h2>
            <p>Some products from our Exclusive Collection</p>
          </div>
        <FeaturedLoading isLoading={this.state.isLoading} />
                  <div className={this.state.mainDiv}>
          <Row>

            { MyView }

          </Row>
                  </div>
        </Container>

      </Fragment>
    )
  }
}

export default FeaturedProducts;
