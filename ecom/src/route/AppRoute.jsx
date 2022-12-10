import React, { Fragment } from 'react'
import { Switch, Route} from "react-router-dom";
import HomePage from "../pages/HomePage";
import UserLoginPage from "../pages/UserLoginPage";
import ContactPage from "../pages/ContactPage";
import PurchasePage from "../pages/PurchasePage";
import PrivacyPage from "../pages/PrivacyPage";
import RefundPage from "../pages/RefundPage";
import ProductDetailsPage from "../pages/ProductDetailsPage";
import NotificationPage from "../pages/NotificationPage";
import FavoritePage from "../pages/FavoritePage";
import CartPage from "../pages/CartPage";
import AboutUsPage from "../pages/AboutUsPage";
import CompanyProfilePage from "../pages/CompanyProfilePage";
import ProductCategoryPage from "../pages/ProductCategoryPage";
import ProductSubcategoryPage from "../pages/ProductSubcategoryPage";
import SearchPage from "../pages/SearchPage";
import RegisterPage from "../pages/RegisterPage";
import ForgotPasswordPage from "../pages/ForgotPasswordPage";
import ResetPasswordPage from "../pages/ResetPasswordPage";
import UserProfilePage from "../pages/UserProfilePage";
import axios from 'axios'
import AppURL from '../api/AppURL'
import NavMenuDesktop from '../components/common/NavMenuDesktop'
import NavMenuMobile from '../components/common/NavMenuMobile'
import OrderListPage from "../pages/OrderListPage";
import PaymentPage from "../pages/PaymentPage";

class AppRoute extends React.Component {

  constructor()
  {
    super();
    this.state = {
      user: {}
    }
  }

  componentDidMount() {
    axios.get(AppURL.UserData)
    .then((response) => {
      this.setUser(response.data)
    })
    .catch(error => {
    });
  }

  setUser = (user) => {
    this.setState ({
      user:user
    })
  }


  render () {

    return(
      <Fragment>

        <div className="Desktop">
        <NavMenuDesktop user={this.state.user} setUser={this.setUser}  />
        </div>

        <div className="Mobile">
        <NavMenuMobile user={this.state.user} setUser={this.setUser}  />
        </div>


        <Switch>
          <Route exact path="/login" render={(props) => <UserLoginPage user={this.state.user} setUser={this.setUser} {...props} key={Date.now()} /> } />
          <Route exact path="/register" render={(props) => <RegisterPage user={this.state.user} setUser={this.setUser} {...props} key={Date.now()} /> } />
          <Route exact path="/forgot" render={(props) => <ForgotPasswordPage {...props} key={Date.now()} /> } />
          <Route exact path="/reset/:id" render={(props) => <ResetPasswordPage {...props} key={Date.now()} /> } />

          <Route exact path="/userprofile" render={(props) => <UserProfilePage user={this.state.user} setUser={this.setUser} {...props} key={Date.now()} /> } />

          <Route exact path="/contact" render={(props) => <ContactPage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/purchase" render={(props) => <PurchasePage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/privacy" render={(props) => <PrivacyPage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/refund" render={(props) => <RefundPage  user={this.state.user} {...props} key={Date.now()} /> } />

          <Route exact path="/notification" render={(props) => <NotificationPage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/favorite" render={(props) => <FavoritePage user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/cart" render={(props) => <CartPage user={this.state.user} {...props} key={Date.now()} /> }/>

            <Route exact path="/payment/:order" render={(props) => <PaymentPage user={this.state.user} {...props} key={Date.now()} /> }/>


          <Route exact path="/order" render={(props) => <OrderListPage user={this.state.user} {...props} key={Date.now()} /> }/>


          <Route exact path="/about" render={(props) => <AboutUsPage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/companyprofile" render={(props) => <CompanyProfilePage user={this.state.user}  {...props} key={Date.now()} /> } />
          <Route exact path="/category/:category" render={(props) => <ProductCategoryPage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/subcategory/:category/:subcategory" render={(props) => <ProductSubcategoryPage  user={this.state.user} {...props} key={Date.now()} /> } />
          <Route exact path="/search/:searchkey" render={(props) => <SearchPage  user={this.state.user} {...props} key={Date.now()} /> }  />

<Route exact path="/productdetails/:code" render={(props) => <ProductDetailsPage user={this.state.user}  {...props} key={Date.now()} /> } />

          <Route path="/" render={(props) => <HomePage user={this.state.user} {...props} key={Date.now()} /> } />

        </Switch>
      </Fragment>
    )
  }
}

export default AppRoute;
