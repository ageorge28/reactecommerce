import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import { Routes, Route, Link } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import CategoryLoading from '../placeholder/CategoryLoading'

class Categories extends React.Component {

  constructor()
  {
    super();
    this.state = {
      MenuData: [],
      isLoading: "",
      mainDiv: "d-none"
    }
  }

  componentDidMount() {
    axios.get(AppURL.AllCategoryDetails)
    .then(response => {
      this.setState({
        MenuData: response.data,
        isLoading: "d-none",
        mainDiv: ""
      });
    })
    .catch(error => {
      console.log(error);
    });
  }

  render () {

    const CatList = this.state.MenuData;
    const MyView = CatList.map((CatList, i) => {
      return(
        <Col className="p-0" key={i.toString()} xl={2} lg={2} md={2} sm={6} xs={6}>
          <Link className="text-link" to={ "/category/" + CatList.category_name }>
          <Card className="h-100 w-100 text-center">
            <Card.Body>
              <img className="center" src={CatList.category_image} />
              <h5 className="category-name">{CatList.category_name}</h5>
            </Card.Body>
          </Card>
          </Link>
        </Col>
      );
    });

    return(
      <Fragment>
        <Container className="text-center" fluid={true}>
          <div className="section-title text-center mb-55">
            <h2>CATEGORIES</h2>
            <p>Our various categories</p>

              <CategoryLoading isLoading={this.state.isLoading} />
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

export default Categories;
