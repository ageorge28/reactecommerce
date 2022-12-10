import React, { Fragment } from 'react'
import FeaturedProducts from '../components/home/FeaturedProducts'
import Categories from '../components/home/Categories'
import Collection from '../components/home/Collection'
import NewArrivals from '../components/home/NewArrivals'
import HomeTop from '../components/home/HomeTop'
import HomeTopMobile from '../components/home/HomeTopMobile'
import NavMenuDesktop from '../components/common/NavMenuDesktop'
import NavMenuMobile from '../components/common/NavMenuMobile'
import FooterDesktop from '../components/common/FooterDesktop'
import FooterMobile from '../components/common/FooterMobile'
import AppURL from '../api/AppURL'
import axios from 'axios'

class HomePage extends React.Component {

  componentDidMount () {
    window.scroll(0,0)
    this.getVisitorDetails();
  }

  getVisitorDetails = () => {
    axios.get(AppURL.VisitorDetails).then().catch();
  }

  render () {
    return (

      <Fragment>

        <div className="Desktop">
          <NavMenuDesktop user={this.props.user} />
          <HomeTop />
        </div>

        <div className="Mobile">
          <NavMenuMobile />
          <HomeTopMobile />
        </div>

        <FeaturedProducts />
        <NewArrivals />
        <Categories />
        <Collection />

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

export default HomePage;
