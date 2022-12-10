import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Modal, Button} from 'react-bootstrap'
import AppURL from '../../api/AppURL'
import axios from 'axios'
import NotificationLoading from '../placeholder/NotificationLoading'
import { Redirect } from "react-router-dom";

class Notification extends React.Component {

  constructor()
  {
    super();
    this.state = {
      show: false,
      NotificationData: [],
      isLoading: "",
      mainDiv: "d-none",
      NotificationMessage: '',
      NotificationTitle: '',
      NotificationDate: ''
    }
  }

  componentDidMount() {
    axios.get(AppURL.AllNotfications)
    .then(response => {
      this.setState({
        NotificationData: response.data,
        isLoading: 'd-none',
        mainDiv: ''
      });
    })
    .catch(error => {
      console.log(error);
    });
  }

  handleClose = () => {
    this.setState({ show: false})
  }

  handleShow = (event) => {
    this.setState({
      show: true,
      NotificationDate: event.target.getAttribute('data-date'),
      NotificationTitle: event.target.getAttribute('data-title'),
      NotificationMessage: event.target.getAttribute('data-message')
    })
  }

  render () {

    if(!localStorage.getItem('token'))
    {
      return <Redirect to="/login" />
    }

    const NotificationList = this.state.NotificationData;
    const MyView = NotificationList.map((NotificationList, i) => {
      return(
        <Col key={i.toString()} className=" p-1 " md={6} lg={6} sm={12} xs={12}>
          <Card className="notification-card">
            <Card.Body>
              <h6>{ NotificationList.title }</h6>
              <p className="py-1  px-0 text-primary m-0">
                <i className="fa  fa-bell"></i>   Date: {NotificationList.date} | Status: Unread
                </p>
                <Button
                  data-title={ NotificationList.title }
                  data-date={NotificationList.date}
                  data-message= { NotificationList.message }
                  onClick={this.handleShow}
                  className="btn btn-danger">
                  Details
                </Button>
              </Card.Body>
            </Card>
          </Col>
        )
      })

      return(
        <Fragment>
          <NotificationLoading isLoading={this.state.isLoading} />
          <div className={this.state.mainDiv}>
            <Container className="TopSection">
              <Row>

                { MyView }

              </Row>
            </Container>
          </div>

          <Modal show={this.state.show} onHide={this.handleClose}>
            <Modal.Header closeButton>
              <h6><i className="fa fa-bell"></i>&nbsp; Date: {this.state.NotificationDate}</h6>
            </Modal.Header>
            <Modal.Body>
              <h6>{this.state.NotificationTitle}</h6>
              <p>{this.state.NotificationMessage}</p>
            </Modal.Body>
            <Modal.Footer>
              <Button variant="secondary" onClick={this.handleClose}>
                Close
              </Button>

            </Modal.Footer>
          </Modal>

        </Fragment>
      )
    }
  }

  export default Notification;
