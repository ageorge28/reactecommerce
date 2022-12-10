import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, ListGroup, ListGroupItem} from 'react-bootstrap'
import Login from '../../assets/images/login.png'
import { Link, Redirect } from "react-router-dom";
import UserImage from '../../assets/images/user.png'

class UserProfile extends React.Component {

  render () {

    let name;
    let email;

    if(this.props.user) {
      name = this.props.user.name;
      email = this.props.user.email;
    }

    if(!localStorage.getItem('token'))
    {
      return <Redirect to="/login" />
    }

    return (
      <Fragment>

        <div className="section-title text-center mb-55"><h2>USER PROFILE</h2></div>


        <Container>

          <Row>

            <Col lg={4} md={4} sm={12}>

              <Card style={{ width: '18rem' }}>
                <Card.Img variant="top" src={UserImage} className="userprofile"/>
                <hr />
                <ListGroup className="list-group-flush">
                  <ListGroupItem><Link className="text-link" to="/order"><p className="product-name-on-card">Order List</p></Link></ListGroupItem>
                </ListGroup>
              </Card>

            </Col>

            <Col lg={8} md={8} sm={12}>
              <ul className="list-group">

                <li className="list-group-item">Name: {name}</li>
                <li className="list-group-item">Email: {email}</li>

              </ul>
            </Col>

          </Row>


        </Container>




      </Fragment>
    )
  }
}

export default UserProfile;
