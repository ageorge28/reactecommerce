import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card} from 'react-bootstrap'

class SubcategoryLoading extends React.Component {
  render () {
    let isLoading = this.props.isLoading;
    return(

      <div className={isLoading}>

        <div className="row">
          <div className="col-lg-12 col-md-12 col-sm-12 col-12 p-1">
            <div className="ph-row">
              <div className="ph-col-12 small" />
              <div className="ph-col-12 small" />
            </div>
          </div>
        </div>

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
    )
  }
}

export default SubcategoryLoading;
