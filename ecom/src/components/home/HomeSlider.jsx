import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

class HomeSlider extends React.Component {

  constructor(props)
  {
    super();
  }

  render () {

    var settings = {
      dots: true,
      infinite: true,
      speed: 500,
      autoplay: true,
      autoplaySpeed:2000,
      slidesToShow: 1,
      slidesToScroll: 1,
      initialSlide: 0,
      arrows: false,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 1,
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

    const SliderList = this.props.data;
    const MyView = SliderList.map((SliderList, i) => {
      return(
        <div key={i.toString()}>
          <img className="slider-img" src={SliderList.slider_image} />
        </div>
      )
    });

    return(
      <Fragment>
        <Slider {...settings}>

          {MyView}

        </Slider>
      </Fragment>
    )
  }
}

export default HomeSlider;
