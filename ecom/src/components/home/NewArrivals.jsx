import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import NewArrivalsLoading from '../placeholder/NewArrivalsLoading'
import { Link } from "react-router-dom";

class NewArrivals extends React.Component {

  constructor(props) {
    super(props);
    this.next = this.next.bind(this);
    this.previous = this.previous.bind(this);
    this.state = {
      productData: [],
      isLoading: "",
      mainDiv: "d-none"
    }
  }

  next() {
    this.slider.slickNext();
  }

  previous() {
    this.slider.slickPrev();
  }

  componentDidMount() {

    axios.get(AppURL.ProductListByRemark("NEW"))
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

    var settings = {
      dots: false,
      infinite: true,
      speed: 500,
      autoplay: true,
      autoplaySpeed:2000,
      slidesToShow: 4,
      slidesToScroll: 1,
      initialSlide: 0,
      arrows: false,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 4,
            slidesToScroll: 1,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1,
            initialSlide: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    };

    const NewList = this.state.productData;
    const MyView = NewList.map((NewList, i) => {


      if(NewList.special_price == null || NewList.special_price == 0)
      {
        return(
          <div key={i.toString()}>
            <Link className="text-link" to={"/productdetails/" + NewList.id }>
              <Card className="image-box card">
                <img className="center" src={NewList.image} />
                <Card.Body>
                  <p className="product-name-on-card">{NewList.title}</p>
                  <p className="product-price-on-card">Price: {NewList.price}$</p>
                </Card.Body>
              </Card>
            </Link>
          </div>
        )
      }
      else {
        return(
          <div key={i.toString()}>
            <Link className="text-link" to={"/productdetails/" + NewList.id }>
              <Card className="image-box card">
                <img className="center" src={NewList.image} />
                <Card.Body>
                  <p className="product-name-on-card">{NewList.title}</p>
                  <p className="product-price-on-card">Price:  <strike className="text-secondary">{NewList.price} $</strike>&nbsp; {NewList.special_price} $</p>
                </Card.Body>
              </Card>
            </Link>
          </div>
        )
      }
    })

    return (
      <Fragment>
        <Container className="text-center" fluid={true}>
          <div className="section-title text-center mb-55">
            <h2>
              NEW ARRIVALS
              &nbsp;
              <a className="btn btn-sm ml-2 site-btn" onClick={this.previous}><i className="fa fa-angle-left"></i></a>
              &nbsp;
              <a className="btn btn-sm ml-2 site-btn" onClick={this.next}><i className="fa fa-angle-right"></i></a>
            </h2>
            <p>Newly Arrived Products</p>
          </div>

          <NewArrivalsLoading isLoading={this.state.isLoading} />
          <div className={this.state.mainDiv}>

            <Row>
              <Slider ref={c => (this.slider=c) } {...settings}>
                {MyView}
              </Slider>
            </Row>

          </div>

        </Container>
      </Fragment>
    )
  }
}

export default NewArrivals;
