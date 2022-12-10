import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import { Link } from "react-router-dom";
import Breadcrumb from 'react-bootstrap/Breadcrumb'

class SearchList extends React.Component {

  constructor(props)
  {
    super();
  }

  render () {

    const searchkey = this.props.searchkey;
    const CollectionList = this.props.data;
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
    });

    return(
      <Fragment>
        <Container className="text-center" fluid={true}>

          <div className="breadBody">
            <Breadcrumb>
              <Breadcrumb.Item><Link to="/">Home</Link></Breadcrumb.Item>
              <Breadcrumb.Item>Search For: <Link to={ "/search/" + {searchkey} }>
              </Link>
            </Breadcrumb.Item>

          </Breadcrumb>
        </div>



        <div className="section-title text-center mb-40 mt-2">
          <h2>SEARCHED FOR: {searchkey}</h2>
          <p>Our products in this category</p>
          <br />
          <Row>

          {MyView}

          </Row>


        </div>
      </Container>
    </Fragment>
  )
}
}

export default SearchList;
