import React from 'react'
import PropTypes from 'prop-types'

class NotificationLoading extends React.Component {
  render () {
                  let isLoading = this.props.isLoading;
    return(
      <div className={isLoading}>

        <div className="row">

          <div className="col-lg-6 col-md-6 col-sm-6 p-1">
            <a href="" className="card image-box h-100 w-100">
              <div className="ph-item">
                <div className="ph-col-12">
                  <div className="ph-row">
                    <div className="ph-col-12 small"/>
                    <div className="ph-col-12 small"/>
                    <div className="ph-col-12 small"/>
                    <div className="ph-col-12 small"/>
                  </div>
                </div>
              </div>
            </a>
          </div>

          <div className="col-lg-6 col-md-6 col-sm-12 p-1">
            <a href="" className="card image-box h-100 w-100">
              <div className="ph-item">
                <div className="ph-col-12">
                  <div className="ph-row">
                    <div className="ph-col-12 small"/>
                    <div className="ph-col-12 small"/>
                    <div className="ph-col-12 small"/>
                    <div className="ph-col-12 small"/>
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

    export default NotificationLoading;
