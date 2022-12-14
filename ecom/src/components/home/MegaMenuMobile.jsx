import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button, Navbar} from 'react-bootstrap'
import { Link } from "react-router-dom";

class MegaMenuMobile extends React.Component {

  constructor(props)
  {
    super();

  }

  MenuItemClick = (event) => {
    event.target.classList.toggle('active');
    var panel = event.target.nextElementSibling;
    if(panel.style.maxHeight)
    {
      panel.style.maxHeight = null;
    }
    else
    {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
  }

  render () {
    const CatList = this.props.data;
    const MyView = CatList.map((CatList, i) => {
      return(
        <div key={i.toString()}>
          <button onClick={this.MenuItemClick} className="accordionMobile">
            <img className="accordionMenuIconMobile" src={CatList.category_image} />
            &nbsp;
            {CatList.category_name}
          </button>
          <div className="panelMobile">
            <ul>
              {
                (CatList.subcategory_name).map((SubList, i) => {
                  return(
                    <li key={i.toString()}><Link to={ "/subcategory/" + CatList.category_name + "/" + SubList.subcategory_name } className="accordionItemMobile">{ SubList.subcategory_name }</Link></li>
                  )
                })
              }
            </ul>
          </div>
        </div>
      )
    })


    return (
      <div className="accordionMenuDivMobile">
        <div className="accordionMenuDivInsideMobile">

          {MyView}

        </div>
      </div>
    )
  }
}

export default MegaMenuMobile;
