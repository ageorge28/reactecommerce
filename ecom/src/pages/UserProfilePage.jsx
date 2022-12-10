import React, {Component, Fragment} from 'react'
import NavMenuDesktop from '../components/common/NavMenuDesktop'
import NavMenuMobile from '../components/common/NavMenuMobile'
import FooterDesktop from '../components/common/FooterDesktop'
import FooterMobile from '../components/common/FooterMobile'
import UserProfile from '../components/common/UserProfile'
import axios from 'axios'
import AppURL from '../api/AppURL'

class UserProfilePage extends React.Component {


  render () {

     const User = this.props.user;

     // console.log(User);

    return (
    <Fragment>
      <div className="Desktop">
        <NavMenuDesktop user={User} />

      </div>
      <div className="Mobile">
        <NavMenuMobile />

      </div>

      <UserProfile user={User} />

        <div className="Desktop">
          <FooterDesktop />

        </div>
        <div className="Mobile">
          <FooterMobile />
        </div>

    </Fragment>
  )
  }
}

export default UserProfilePage;
