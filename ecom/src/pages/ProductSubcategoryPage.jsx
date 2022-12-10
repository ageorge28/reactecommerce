import React, { Component, Fragment } from 'react'
import NavMenuDesktop from '../components/common/NavMenuDesktop'
import NavMenuMobile from '../components/common/NavMenuMobile'
import FooterDesktop from '../components/common/FooterDesktop'
import FooterMobile from '../components/common/FooterMobile'
import Subcategory from '../components/products/Subcategory'
import { useParams } from 'react-router-dom';
import axios from 'axios'
import AppURL from '../api/AppURL'

export function withRouter(Children){
  return(props)=>{

    const match  = {params: useParams()};
    return <Children {...props}  match = {match}/>
  }
}

class ProductSubcategoryPage extends React.Component {

  constructor({match})
  {
    super();
    this.state = {
      category: match.params.category,
      subcategory: match.params.subcategory,
      productData: [],
      loaderDiv: '',
      mainDiv: 'd-none'
    }
  }

  componentDidMount () {

    window.scroll(0,0);

    axios.get(AppURL.ProductListBySubcategory(this.state.category, this.state.subcategory))
    .then(response => {
      this.setState({
        productData: response.data,
        loaderDiv: 'd-none',
        mainDiv: ''
      });
    })
    .catch(error => {
      console.log(error);
    });
  }

  componentDidUpdate(prevProps, prevState){
    // alert('Subcategory Update');
    if(this.props.match.params.subcategory != prevProps.match.params.subcategory)
    {
      // alert('Subcategory changed');

      window.scroll(0,0);
      // alert(this.state.category);
      axios.get(AppURL.ProductListBySubcategory(this.props.match.params.category, this.props.match.params.subcategory))
      .then(response => {
        this.setState({
          category: this.props.match.params.category,
          subcategory: this.props.match.params.subcategory,
          productData: response.data
        });
      })
      .catch(error => {
        console.log(error);
      });


    }

  }

  render () {
    return(
      <Fragment>
        <div className="Desktop">
          <NavMenuDesktop  user={this.props.user} />

        </div>
        <div className="Mobile">
          <NavMenuMobile />

        </div>



        <div className={this.state.loaderDiv}>


          <br />

          <div className="row">

            <div className="col-lg-12 col-md-12 col-sm-12 col-12 p-1">
              <div className="ph-row">
                <div className="ph-col-12 small" />
                  <div className="ph-col-12 small" />
                                  <div className="ph-col-12 small" />
                                    <div className="ph-col-12 small" />
                                                    <div className="ph-col-12 small" />
              </div>
            </div>

          </div>

<br /><br />


          <div className="row">

            <div className="col-lg-3 col-md-3 col-sm-4 col-6 p-1">
              <a href="" className="card image-box h-100 w-100">
                <div className="ph-picture"></div>
                <div className="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                    </div>
                  </div>
                </div>
              </a>
            </div>

            <div className="col-lg-3 col-md-3 col-sm-4 col-6 p-1">
              <a href="" className="card image-box h-100 w-100">
                <div className="ph-picture"></div>
                <div className="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                    </div>
                  </div>
                </div>
              </a>
            </div>

            <div className="col-lg-3 col-md-3 col-sm-4 col-6 p-1">
              <a href="" className="card image-box h-100 w-100">
                <div className="ph-picture"></div>
                <div className="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                    </div>
                  </div>
                </div>
              </a>
            </div>

            <div className="col-lg-3 col-md-3 col-sm-4 col-6 p-1">
              <a href="" className="card image-box h-100 w-100">
                <div className="ph-picture"></div>
                <div className="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
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


          <Subcategory data={this.state.productData} category={this.state.category} subcategory={this.state.subcategory}/>

        </div>
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

export default withRouter(ProductSubcategoryPage);
