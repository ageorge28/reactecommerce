import React, { Component, Fragment } from 'react'
import NavMenuDesktop from '../components/common/NavMenuDesktop'
import NavMenuMobile from '../components/common/NavMenuMobile'
import FooterDesktop from '../components/common/FooterDesktop'
import FooterMobile from '../components/common/FooterMobile'
import Cart from '../components/cart/Cart'

class CartPage extends React.Component {

  componentDidMount () {
    window.scroll(0,0)
  }

  render () {

    const User = this.props.user;

    return(
      <Fragment>
        <div className="Desktop">
          <NavMenuDesktop  user={this.props.user} />

        </div>
        <div className="Mobile">
          <NavMenuMobile />

        </div>

        <Cart user={User} />

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

export default CartPage;
