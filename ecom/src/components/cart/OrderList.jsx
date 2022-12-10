import React, { Component, Fragment } from 'react'
import { Link, Redirect } from "react-router-dom";
import {Container, Row, Col, Card, Button, Modal} from 'react-bootstrap'
import axios from 'axios'
import AppURL from '../../api/AppURL'
import cogoToast from 'cogo-toast';
import Apple from '../../assets/images/kaziariyan.png';

class OrderList extends React.Component {

  constructor()
  {
    super();
    this.state = {
      productData: [],
      isLoading: "",
      mainDiv: "d-none",
      PageRefreshStatus: false,
      rating: '',
      name: '',
      comments: '',
      PageRedirectStatus: false,
      product_code: '',
      product_name: '',
      ReviewModal: false
    }
  }

  componentDidMount() {

    axios.get(AppURL.OrderList(this.props.user.email))
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

  ReviewModalClose = () => {
    this.setState({ ReviewModal: false})
  }

  ReviewModalOpen = (product_code, product_name) => {
    this.setState({ ReviewModal: true, product_name: product_name, product_code: product_code });
  }

  nameOnChange = (event) => {
    let name = event.target.value;
    this.setState({ name: name });
  }

  ratingOnChange = (event) => {
    let rating = event.target.value;
    this.setState({ rating: rating });
  }

  commentsOnChange = (event) => {
    let comments = event.target.value;
    this.setState({ comments: comments });
  }

  postReview = () => {
    let product_code = this.state.product_code;
    let product_name = this.state.product_name;
    let reviewer_name = this.state.name == '' ? this.props.user.name : this.state.name;
    let reviewer_rating = this.state.rating;
    let reviewer_comments = this.state.comments;

    if(reviewer_name.length == 0)
    {
      cogoToast.error("Name is required",{position:'top-right'});
    }
    else if (reviewer_rating == 0 || reviewer_rating == null)
    {
      cogoToast.error("Rating is required",{position:'top-right'});
    }

    else if (reviewer_comments.length == 0)
    {
      cogoToast.error("Comments are required",{position:'top-right'});
    }
    else if (reviewer_comments.length > 150)
    {
      cogoToast.error("Comments length should not be greater than 150 characters",{position:'top-right'});
    }
    else
    {
      let MyFormData = new FormData();

      MyFormData.append('product_code', product_code);
      MyFormData.append('product_name', product_name);
      MyFormData.append('reviewer_name', reviewer_name);
      MyFormData.append('review_photo', '');
      MyFormData.append('reviewer_rating', reviewer_rating);
      MyFormData.append('reviewer_comments', reviewer_comments);

      axios.post(AppURL.PostReview, MyFormData)
      .then(response => {
        if(response.data === 1)
        {
          cogoToast.success("Review Posted Successfully",{position:'top-right'});
          this.ReviewModalClose();
        }
        else
        {
          cogoToast.error("Your Review Is Not Posted, Try Again",{position:'top-right'});
        }
      })
      .catch(error => {
        cogoToast.error("Your Review Is Not Posted, Try Again",{position:'top-right'});
      });
    }
  }

  render () {

    if(!localStorage.getItem('token'))
    {
      return <Redirect to="/login" />
    }

    const OrderList = this.state.productData;

    const MyView = OrderList.map((OrderList, i) => {

      return (
        <div key={i.toString()}>
          <Col md={6} lg={6} sm={6} xs={6}>
            <Row>
              <Col md={6} lg={6} sm={6} xs={6}>
                <h5 className="product-name">{OrderList.product_name}</h5>
                <h6> Quantity = {OrderList.quantity} </h6>
                <p>{OrderList.size} | {OrderList.color}</p>
                <h6>Price = {OrderList.unit_price} x {OrderList.quantity} = {OrderList.total_price}$</h6>
                <h6>Status: {OrderList.order_status}</h6>
              </Col>

              <Col md={6} lg={6} sm={6} xs={6}>
                <img className="cart-product-img" src={OrderList.image} />

              </Col>

            </Row>
          </Col>
          <Col md={6} lg={6} sm={6} xs={6}>
          </Col>

          <Button onClick={this.ReviewModalOpen.bind(this,OrderList.product_code,OrderList.product_name ) } className="btn btn-danger">Post Review </Button>
          <hr />
        </div>
      )

    });

    return(

      <Fragment>
        <Container>
          <div className="section-title text-center mb-55"><h2>ORDER HISTORY OF ({this.props.user.name})</h2></div>


          <div className={this.state.isLoading}>

            <br />

            <div className="row">

              <div className="col-lg-12 col-md-12 col-sm-12 col-12 p-1">
                <a href="" className="card image-box h-100 w-100">
                  <div className="ph-item">
                    <div className="ph-col-12">
                      <div className="ph-row">
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                        <div className="ph-col-12 small" />
                      </div>
                    </div>
                  </div>
                </a>
              </div>

            </div>

          </div>

          <div className={this.state.mainDiv}>


            <Card>

              <Card.Body>

                <Row>

                  {MyView}

                </Row>


              </Card.Body>


            </Card>

          </div>

        </Container>

        <Modal show={this.state.ReviewModal} onHide={this.ReviewModalClose}>
          <Modal.Header closeButton>
            <h6><i className="fa fa-bell"></i>&nbsp; Post Your Review</h6>
          </Modal.Header>
          <Modal.Body>

            <h6>Review</h6>

            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
              <label className="form-label">Your Name:</label>
              <input onChange={this.nameOnChange} value={this.props.user.name} className="form-control" type="text" placeholder={this.props.user.name}/>
            </div>

            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
              <label className="form-label">Select Product Rating:</label>
              <select onChange={this.ratingOnChange} className="form-control">
                <option value="">Choose</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
              </select>
            </div>

            <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
              <label className="form-label">Your Comments:</label>
              <textarea onChange={this.commentsOnChange} rows={2}  className="form-control" type="text" placeholder=""/>
            </div>

          </Modal.Body>
          <Modal.Footer>
            <Button variant="secondary" onClick={this.postReview}>
              Post
            </Button>
            <Button variant="secondary" onClick={this.ReviewModalClose}>
              Close
            </Button>

          </Modal.Footer>
        </Modal>



      </Fragment>

    )
  }
}

export default OrderList;
