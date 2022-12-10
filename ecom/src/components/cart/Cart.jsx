import React, {Component, Fragment} from 'react'
import {Container, Row, Col, Card, Button} from 'react-bootstrap'
import Product1 from '../../assets/images/products/product1.png'
import { Link, Redirect } from "react-router-dom";
import axios from 'axios'
import AppURL from '../../api/AppURL'
import cogoToast from 'cogo-toast';

class Cart extends React.Component {


  constructor()
  {
    super();
    this.state = {
      productData: [],
      isLoading: "",
      mainDiv: "d-none",
      PageRefreshStatus: false,
      confirmBtn: 'Confirm Order',
      city: '',
      payment: '',
      name: '',
      address: '',
      PageRedirectStatus: false,
      order: null,
    }
  }


  componentDidMount() {

    axios.get(AppURL.CartList(this.props.user.email))
    .then(response => {
      this.setState({
        productData: response.data,
        isLoading: 'd-none',
        mainDiv: ''
      });
    })
    .catch(error => {
      console.log(error);
    });

  }

  removeItem = (id) => {

    axios.get(AppURL.RemoveCart(id))
    .then(response => {
      if(response.data === 1)
      {
        cogoToast.success("Product Removed From Cart Successfully",{position:'top-right'});
        this.setState({ PageRefreshStatus: true })
      }
      else
      {
        cogoToast.error("Unable to Remove Product From Cart, Try Again",{position:'top-right'});
      }
    })
    .catch(error => {
      cogoToast.error("Unable to Remove Product From Cart, Try Again",{position:'top-right'});
    });
  }


  incrementItem = (id) => {

    axios.get(AppURL.IncrementCart(id))
    .then(response => {
      if(response.data === 1)
      {
        cogoToast.success("Product Quantity Incremented Successfully",{position:'top-right'});
        this.setState({ PageRefreshStatus: true })
      }
      else
      {
        cogoToast.error("Unable to Increment Quantity, Try Again",{position:'top-right'});
        // console.log(response);
      }
    })
    .catch(error => {
      cogoToast.error("Unable to Increment Quantity, Try Again",{position:'top-right'});
      // console.log(error);
    });
  }


  decrementItem = (id) => {

    axios.get(AppURL.DecrementCart(id))
    .then(response => {
      if(response.data === 1)
      {
        cogoToast.success("Product Quantity Decremented Successfully",{position:'top-right'});
        this.setState({ PageRefreshStatus: true })
      }
      else
      {
        cogoToast.error("Unable to Decrement Quantity, Try Again",{position:'top-right'});
      }
    })
    .catch(error => {
      cogoToast.error("Unable to Decrement Quantity, Try Again",{position:'top-right'});
    });
  }


  PageRefresh = () => {
    if(this.state.PageRefreshStatus === true)
    {
      let URL1 = window.location.href;

      let URLs = URL1.split('/');

      let URL2 = '/' + URLs[5];
      return (
        <Redirect to={URL2} />
      )
    }
  }

  cityOnChange = (event) => {
    let city = event.target.value;
    this.setState({
      city: city
    })
  }

  paymentMethodOnChange = (event) => {
    let payment = event.target.value;
    this.setState({
      payment: payment
    })
  }

  nameOnChange = (event) => {
    let name = event.target.value;
    this.setState({
      name: name
    })
  }

  addressOnChange = (event) => {
    let address = event.target.value;
    this.setState({
      address: address
    })
  }

  confirmOnClick = () => {

    let city = this.state.city;
    let payment = this.state.payment;
    let name = this.state.name;
    let address = this.state.address;
    let email = this.props.user.email;

    if(city.length === 0)
    {
      cogoToast.error("Please Select Your City",{position:'top-right'});
    }
    else if(payment.length === 0)
    {
      cogoToast.error("Please Select The Payment Method",{position:'top-right'});
    }
    else if(name.length === 0)
    {
      cogoToast.error("Please Enter Your Name",{position:'top-right'});
    }
    else if(address.length === 0)
    {
      cogoToast.error("Please Enter Your Address",{position:'top-right'});
    }
    else
    {
      let invoice = new Date().getTime();

      let MyFormData = new FormData();
      MyFormData.append('city', city);
      MyFormData.append('payment_method', payment);
      MyFormData.append('name', name);
      MyFormData.append('email', email);
      MyFormData.append('delivery_address', address);
      MyFormData.append('invoice_no', invoice);
      MyFormData.append('delivery_charge', 0);

      axios.post(AppURL.CartOrder, MyFormData)
      .then(response => {
        if(response.data >= 1)
        {
          cogoToast.success("Order Request Received", {position:'top-right'});
          this.setState({ order: response.data });
          this.setState({ PageRedirectStatus: true })
        }
        else
        {
          cogoToast.error("Your Request Is Not Done, Try Again",{position:'top-right'});
        }
      })
      .catch(error => {
        cogoToast.error("Your Request Is Not Done, Try Again",{position:'top-right'});
      });
    }
  }

  PageRedirect = () => {
    if(this.state.PageRedirectStatus === true)
    {
      if(this.state.payment == 'Stripe')
      {
        return (
          <Redirect to={"/payment/" + this.state.order} />
        )
      }
      else
      {
        return (
          <Redirect to="/order" />
        )
      }
    }
  }

  render () {

    if(!localStorage.getItem('token'))
    {
      return <Redirect to="/login" />
    }

    const CartList = this.state.productData;

    let totalPriceSum = 0.0;

    const MyView = CartList.map((CartList, i) => {

      totalPriceSum = parseFloat(totalPriceSum) + parseFloat(CartList.total_price)

      return (

        <div key={i.toString()}>
          <Card >
            <Card.Body>
              <Row>
                <Col md={3} lg={3} sm={6} xs={6}>
                  <img className="cart-product-img" src={CartList.image} />
                </Col>

                <Col md={6} lg={6} sm={6} xs={6}>
                  <h5 className="product-name">{CartList.product_name}</h5>
                  <h6> Quantity = {CartList.quantity} </h6>
                  <p>{CartList.size} | {CartList.color}</p>
                  <h6>Price = {CartList.unit_price} x {CartList.quantity} = {CartList.total_price}$</h6>
                </Col>

                <Col md={3} lg={3} sm={12} xs={12}>

                  <Button onClick={ () => this.removeItem(CartList.id) } className="btn mt-2 mx-1 btn-lg site-btn"><i className="fa fa-trash-alt"></i></Button>
                  <Button onClick={ () => this.incrementItem(CartList.id) } className="btn mt-2 mx-1 btn-lg site-btn"><i className="fa fa-plus"></i></Button>
                  <Button onClick={ () => this.decrementItem(CartList.id) } className="btn mt-2 mx-1 btn-lg site-btn"><i className="fa fa-minus"></i></Button>

                </Col>
              </Row>
            </Card.Body>
          </Card>
        </div>

      )

    });



    return(
      <Fragment>

        <Container>

          <div className="section-title text-center mb-55"><h2>SHOPPING CART</h2>
        </div>



        <div className={this.state.isLoading}>

          <br />

          <div className="row">

            <div className="col-lg-7 col-md-7 col-sm-12 col-12 p-1">

              <a href="" className="card image-box h-100 w-100">

                <div className="row">
                  <div className="col-lg-3 col-md-3 col-sm-6 col-6 p-1">
                    <div className="ph-picture"></div>

                  </div>

                  <div className="col-lg-6 col-md-6 col-sm-6 col-6 p-1">


                    <div className="ph-row">
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />
                      <div className="ph-col-12 small" />


                    </div>

                  </div>
                </div>
              </a>
            </div>

            <div className="col-lg-5 col-md-5 col-sm-12 col-12 p-1">
              <div className="ph-row">
                <div className="ph-col-12 small" />
                <div className="ph-col-12 small" />
                <div className="ph-col-12 small" />
                <div className="ph-col-12 small" />
                <div className="ph-col-12 small" />
                  <div className="ph-col-12 small" />
                  <div className="ph-col-12 small" />
                  <div className="ph-col-12 small" />
              </div>
            </div>
          </div>

        </div>

        <div className={this.state.mainDiv}>
          <Row>

            <Col className="p-1" lg={7} md={7} sm={12} xs={12} >

              {MyView}

            </Col>


            <Col className="p-1" lg={5} md={5} sm={12} xs={12} >

              <div className="card p-2">

                <div className="card-body">

                  <div className="container-fluid">

                    <div className="row">
                      <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                        <h5 className="Product-Name text-danger">
                          Total Due: {totalPriceSum}$
                        </h5>
                      </div>
                    </div>

                    <div className="row">

                      <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                        <label className="form-label">Choose City</label>
                        <select onChange={this.cityOnChange} className="form-control">
                          <option value="Adoni">Adoni</option>
                          <option value="Agartala">Agartala</option>
                          <option value="Agra">Agra</option>
                          <option value="Ahmedabad">Ahmedabad</option>
                          <option value="Ahmednagar">Ahmednagar</option>
                          <option value="Aizawl">Aizawl</option>
                          <option value="Ajmer">Ajmer</option>
                          <option value="Akola">Akola</option>
                          <option value="Alappuzha">Alappuzha</option>
                          <option value="Aligarh">Aligarh</option>
                          <option value="Allahabad">Allahabad</option>
                          <option value="Alwar">Alwar</option>
                          <option value="Amaravati">Amaravati</option>
                          <option value="Ambala">Ambala</option>
                          <option value="Ambarnath">Ambarnath</option>
                          <option value="Ambattur">Ambattur</option>
                          <option value="Amravati">Amravati</option>
                          <option value="Amritsar">Amritsar</option>
                          <option value="Amroha">Amroha</option>
                          <option value="Anand">Anand</option>
                          <option value="Anantapur">Anantapur</option>
                          <option value="Anantapuram">Anantapuram</option>
                          <option value="Anantnag">Anantnag</option>
                          <option value="Arrah">Arrah</option>
                          <option value="Asansol">Asansol</option>
                          <option value="Aurangabad">Aurangabad</option>
                          <option value="Aurangabad">Aurangabad</option>
                          <option value="Avadi">Avadi</option>
                          <option value="Bahraich">Bahraich</option>
                          <option value="Ballia">Ballia</option>
                          <option value="Bally">Bally</option>
                          <option value="Bangalore">Bangalore</option>
                          <option value="Baranagar">Baranagar</option>
                          <option value="Barasat">Barasat</option>
                          <option value="Bardhaman">Bardhaman</option>
                          <option value="Bareilly">Bareilly</option>
                          <option value="Bathinda">Bathinda</option>
                          <option value="Begusarai">Begusarai</option>
                          <option value="Belgaum">Belgaum</option>
                          <option value="Bellary">Bellary</option>
                          <option value="Berhampore">Berhampore</option>
                          <option value="Berhampur">Berhampur</option>
                          <option value="Bettiah">Bettiah</option>
                          <option value="Bhagalpur">Bhagalpur</option>
                          <option value="Bhalswa Jahangir Pur">Bhalswa Jahangir Pur</option>
                          <option value="Bharatpur">Bharatpur</option>
                          <option value="Bhatpara">Bhatpara</option>
                          <option value="Bhavnagar">Bhavnagar</option>
                          <option value="Bhilai">Bhilai</option>
                          <option value="Bhilwara">Bhilwara</option>
                          <option value="Bhimavaram">Bhimavaram</option>
                          <option value="Bhind">Bhind</option>
                          <option value="Bhiwandi">Bhiwandi</option>
                          <option value="Bhiwani">Bhiwani</option>
                          <option value="Bhopal">Bhopal</option>
                          <option value="Bhubaneswar">Bhubaneswar</option>
                          <option value="Bhusawal">Bhusawal</option>
                          <option value="Bidar">Bidar</option>
                          <option value="Bidhannagar">Bidhannagar</option>
                          <option value="Bihar Sharif">Bihar Sharif</option>
                          <option value="Bijapur">Bijapur</option>
                          <option value="Bikaner">Bikaner</option>
                          <option value="Bilaspur">Bilaspur</option>
                          <option value="Bokaro">Bokaro</option>
                          <option value="Bongaigaon">Bongaigaon</option>
                          <option value="Budaun">Budaun</option>
                          <option value="Bulandshahr">Bulandshahr</option>
                          <option value="Burhanpur">Burhanpur</option>
                          <option value="Buxar">Buxar</option>
                          <option value="Chandigarh">Chandigarh</option>
                          <option value="Chandrapur">Chandrapur</option>
                          <option value="Chennai">Chennai</option>
                          <option value="Chhapra">Chhapra</option>
                          <option value="Chinsurah">Chinsurah</option>
                          <option value="Chittoor">Chittoor</option>
                          <option value="Coimbatore">Coimbatore</option>
                          <option value="Cuttack">Cuttack</option>
                          <option value="Danapur">Danapur</option>
                          <option value="Darbhanga">Darbhanga</option>
                          <option value="Davanagere">Davanagere</option>
                          <option value="Dehradun">Dehradun</option>
                          <option value="Dehri">Dehri</option>
                          <option value="Delhi">Delhi</option>
                          <option value="Deoghar">Deoghar</option>
                          <option value="Dewas">Dewas</option>
                          <option value="Dhanbad">Dhanbad</option>
                          <option value="Dharmavaram">Dharmavaram</option>
                          <option value="Dhule">Dhule</option>
                          <option value="Dibrugarh">Dibrugarh</option>
                          <option value="Dindigul">Dindigul</option>
                          <option value="Durg">Durg</option>
                          <option value="Durgapur">Durgapur</option>
                          <option value="Eluru">Eluru</option>
                          <option value="Erode">Erode</option>
                          <option value="Etawah">Etawah</option>
                          <option value="Faridabad">Faridabad</option>
                          <option value="Farrukhabad">Farrukhabad</option>
                          <option value="Fatehpur">Fatehpur</option>
                          <option value="Firozabad">Firozabad</option>
                          <option value="Gandhidham">Gandhidham</option>
                          <option value="Gandhinagar">Gandhinagar</option>
                          <option value="Gangavathi">Gangavathi</option>
                          <option value="Gangtok">Gangtok</option>
                          <option value="Gaya">Gaya</option>
                          <option value="Ghaziabad">Ghaziabad</option>
                          <option value="Giridih">Giridih</option>
                          <option value="Gopalpur">Gopalpur</option>
                          <option value="Gorakhpur">Gorakhpur</option>
                          <option value="Gudivada">Gudivada</option>
                          <option value="Gulbarga">Gulbarga</option>
                          <option value="Guna">Guna</option>
                          <option value="Guntakal">Guntakal</option>
                          <option value="Guntur">Guntur</option>
                          <option value="Gurgaon">Gurgaon</option>
                          <option value="Guwahati">Guwahati</option>
                          <option value="Gwalior">Gwalior</option>
                          <option value="Hajipur">Hajipur</option>
                          <option value="Haldia">Haldia</option>
                          <option value="Hapur">Hapur</option>
                          <option value="Haridwar">Haridwar</option>
                          <option value="Hazaribagh">Hazaribagh</option>
                          <option value="Hindupur">Hindupur</option>
                          <option value="Hospet">Hospet</option>
                          <option value="Hosur">Hosur</option>
                          <option value="Howrah">Howrah</option>
                          <option value="Hubli–Dharwad">Hubli–Dharwad</option>
                          <option value="Hyderabad">Hyderabad</option>
                          <option value="Ichalkaranji">Ichalkaranji</option>
                          <option value="Imphal">Imphal</option>
                          <option value="Indore">Indore</option>
                          <option value="Jabalpur">Jabalpur</option>
                          <option value="Jaipur">Jaipur</option>
                          <option value="Jalandhar">Jalandhar</option>
                          <option value="Jalgaon">Jalgaon</option>
                          <option value="Jalna">Jalna</option>
                          <option value="Jamalpur">Jamalpur</option>
                          <option value="Jammu">Jammu</option>
                          <option value="Jamnagar">Jamnagar</option>
                          <option value="Jamshedpur">Jamshedpur</option>
                          <option value="Jaunpur">Jaunpur</option>
                          <option value="Jehanabad">Jehanabad</option>
                          <option value="Jhansi">Jhansi</option>
                          <option value="Jodhpur">Jodhpur</option>
                          <option value="Jorhat">Jorhat</option>
                          <option value="Junagadh">Junagadh</option>
                          <option value="Kadapa">Kadapa</option>
                          <option value="Kakinada">Kakinada</option>
                          <option value="Kalyan-Dombivli">Kalyan-Dombivli</option>
                          <option value="Kamarhati">Kamarhati</option>
                          <option value="Kanpur">Kanpur</option>
                          <option value="Karaikudi">Karaikudi</option>
                          <option value="Karawal Nagar">Karawal Nagar</option>
                          <option value="Karimnagar">Karimnagar</option>
                          <option value="Karnal">Karnal</option>
                          <option value="Karur">Karur</option>
                          <option value="Katihar">Katihar</option>
                          <option value="Katni">Katni</option>
                          <option value="Kavali">Kavali</option>
                          <option value="Khammam">Khammam</option>
                          <option value="Khandwa">Khandwa</option>
                          <option value="Kharagpur">Kharagpur</option>
                          <option value="Khora, Ghaziabad">Khora, Ghaziabad</option>
                          <option value="Kirari Suleman Nagar">Kirari Suleman Nagar</option>
                          <option value="Kishanganj">Kishanganj</option>
                          <option value="Kochi">Kochi</option>
                          <option value="Kolhapur">Kolhapur</option>
                          <option value="Kolkata">Kolkata</option>
                          <option value="Kollam">Kollam</option>
                          <option value="Korba">Korba</option>
                          <option value="Kota">Kota</option>
                          <option value="Kottayam">Kottayam</option>
                          <option value="Kozhikode">Kozhikode</option>
                          <option value="Kulti">Kulti</option>
                          <option value="Kumbakonam">Kumbakonam</option>
                          <option value="Kurnool">Kurnool</option>
                          <option value="Latur">Latur</option>
                          <option value="Loni">Loni</option>
                          <option value="Lucknow">Lucknow</option>
                          <option value="Ludhiana">Ludhiana</option>
                          <option value="Machilipatnam">Machilipatnam</option>
                          <option value="Madanapalle">Madanapalle</option>
                          <option value="Madhyamgram">Madhyamgram</option>
                          <option value="Madurai">Madurai</option>
                          <option value="Mahbubnagar">Mahbubnagar</option>
                          <option value="Maheshtala">Maheshtala</option>
                          <option value="Malda">Malda</option>
                          <option value="Malegaon">Malegaon</option>
                          <option value="Mangalore">Mangalore</option>
                          <option value="Mango">Mango</option>
                          <option value="Mathura">Mathura</option>
                          <option value="Mau">Mau</option>
                          <option value="Medininagar">Medininagar</option>
                          <option value="Meerut">Meerut</option>
                          <option value="Mehsana">Mehsana</option>
                          <option value="Midnapore">Midnapore</option>
                          <option value="Mira-Bhayandar">Mira-Bhayandar</option>
                          <option value="Miryalaguda">Miryalaguda</option>
                          <option value="Mirzapur">Mirzapur</option>
                          <option value="Moradabad">Moradabad</option>
                          <option value="Morbi">Morbi</option>
                          <option value="Morena">Morena</option>
                          <option value="Motihari">Motihari</option>
                          <option value="Mumbai">Mumbai</option>
                          <option value="Munger">Munger</option>
                          <option value="Muzaffarnagar">Muzaffarnagar</option>
                          <option value="Muzaffarpur">Muzaffarpur</option>
                          <option value="Mysore">Mysore</option>
                          <option value="Nadiad">Nadiad</option>
                          <option value="Nagaon">Nagaon</option>
                          <option value="Nagercoil">Nagercoil</option>
                          <option value="Nagpur">Nagpur</option>
                          <option value="Naihati">Naihati</option>
                          <option value="Nanded">Nanded</option>
                          <option value="Nandyal">Nandyal</option>
                          <option value="Nangloi Jat">Nangloi Jat</option>
                          <option value="Narasaraopet">Narasaraopet</option>
                          <option value="Nashik">Nashik</option>
                          <option value="Navi Mumbai">Navi Mumbai</option>
                          <option value="Nellore">Nellore</option>
                          <option value="New Delhi">New Delhi</option>
                          <option value="Nizamabad">Nizamabad</option>
                          <option value="Noida">Noida</option>
                          <option value="North Dumdum">North Dumdum</option>
                          <option value="Ongole">Ongole</option>
                          <option value="Orai">Orai</option>
                          <option value="Pali">Pali</option>
                          <option value="Pallavaram">Pallavaram</option>
                          <option value="Panchkula">Panchkula</option>
                          <option value="Panihati">Panihati</option>
                          <option value="Panipat">Panipat</option>
                          <option value="Panvel">Panvel</option>
                          <option value="Parbhani">Parbhani</option>
                          <option value="Patiala">Patiala</option>
                          <option value="Patna">Patna</option>
                          <option value="Phagwara">Phagwara</option>
                          <option value="Phusro">Phusro</option>
                          <option value="Pimpri-Chinchwad">Pimpri-Chinchwad</option>
                          <option value="Pondicherry">Pondicherry</option>
                          <option value="Port Blair">Port Blair</option>
                          <option value="Proddatur">Proddatur</option>
                          <option value="Pudukkottai">Pudukkottai</option>
                          <option value="Pune">Pune</option>
                          <option value="Puri">Puri</option>
                          <option value="Purnia">Purnia</option>
                          <option value="Raebareli">Raebareli</option>
                          <option value="Raichur">Raichur</option>
                          <option value="Raiganj">Raiganj</option>
                          <option value="Raipur">Raipur</option>
                          <option value="Rajahmundry">Rajahmundry</option>
                          <option value="Rajkot">Rajkot</option>
                          <option value="Rajpur Sonarpur">Rajpur Sonarpur</option>
                          <option value="Ramagundam">Ramagundam</option>
                          <option value="Ramgarh">Ramgarh</option>
                          <option value="Rampur">Rampur</option>
                          <option value="Ranchi">Ranchi</option>
                          <option value="Ratlam">Ratlam</option>
                          <option value="Rewa">Rewa</option>
                          <option value="Rohtak">Rohtak</option>
                          <option value="Rourkela">Rourkela</option>
                          <option value="Sagar">Sagar</option>
                          <option value="Saharanpur">Saharanpur</option>
                          <option value="Saharsa">Saharsa</option>
                          <option value="Salem">Salem</option>
                          <option value="Sambalpur">Sambalpur</option>
                          <option value="Sambhal">Sambhal</option>
                          <option value="Sangli-Miraj & Kupwad">Sangli-Miraj & Kupwad</option>
                          <option value="Sasaram">Sasaram</option>
                          <option value="Satara">Satara</option>
                          <option value="Satna">Satna</option>
                          <option value="Secunderabad">Secunderabad</option>
                          <option value="Serampore">Serampore</option>
                          <option value="Shahjahanpur">Shahjahanpur</option>
                          <option value="Shimla">Shimla</option>
                          <option value="Shimoga">Shimoga</option>
                          <option value="Shivpuri">Shivpuri</option>
                          <option value="Sikar">Sikar</option>
                          <option value="Silchar">Silchar</option>
                          <option value="Siliguri">Siliguri</option>
                          <option value="Singrauli">Singrauli</option>
                          <option value="Sirsa">Sirsa</option>
                          <option value="Siwan">Siwan</option>
                          <option value="Solapur">Solapur</option>
                          <option value="Sonipat">Sonipat</option>
                          <option value="South Dumdum">South Dumdum</option>
                          <option value="Sri Ganganagar">Sri Ganganagar</option>
                          <option value="Srikakulam">Srikakulam</option>
                          <option value="Srinagar">Srinagar</option>
                          <option value="Sultan Pur Majra">Sultan Pur Majra</option>
                          <option value="Surat">Surat</option>
                          <option value="Surendranagar Dudhrej">Surendranagar Dudhrej</option>
                          <option value="Suryapet">Suryapet</option>
                          <option value="Tadepalligudem">Tadepalligudem</option>
                          <option value="Tadipatri">Tadipatri</option>
                          <option value="Tenali">Tenali</option>
                          <option value="Tezpur">Tezpur</option>
                          <option value="Thane">Thane</option>
                          <option value="Thanjavur">Thanjavur</option>
                          <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                          <option value="Thoothukudi">Thoothukudi</option>
                          <option value="Thrissur">Thrissur</option>
                          <option value="Tinsukia">Tinsukia</option>
                          <option value="Tiruchirappalli">Tiruchirappalli</option>
                          <option value="Tirunelveli">Tirunelveli</option>
                          <option value="Tiruppur">Tiruppur</option>
                          <option value="Tiruvottiyur">Tiruvottiyur</option>
                          <option value="Tumkur">Tumkur</option>
                          <option value="Udaipur">Udaipur</option>
                          <option value="Udupi">Udupi</option>
                          <option value="Ujjain">Ujjain</option>
                          <option value="Ulhasnagar">Ulhasnagar</option>
                          <option value="Uluberia">Uluberia</option>
                          <option value="Unnao">Unnao</option>
                          <option value="Uzhavarkarai">Uzhavarkarai</option>
                          <option value="Vadodara">Vadodara</option>
                          <option value="Varanasi">Varanasi</option>
                          <option value="Vasai-Virar">Vasai-Virar</option>
                          <option value="Vasco Da Gama">Vasco Da Gama</option>
                          <option value="Vellore">Vellore</option>
                          <option value="Vijayanagaram">Vijayanagaram</option>
                          <option value="Vijayawada">Vijayawada</option>
                          <option value="Visakhapatnam">Visakhapatnam</option>
                          <option value="Warangal">Warangal</option>
                          <option value="Yamunanagar">Yamunanagar</option>
                        </select>
                      </div>

                      <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                        <label className="form-label">Choose Payment Method</label>
                        <select onChange={this.paymentMethodOnChange} className="form-control">
                          <option value="">Choose</option>
                          <option value="Cash On Delivery">Cash On Delivery</option>
                          <option value="Stripe">Stripe</option>
                        </select>
                      </div>

                      <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                        <label className="form-label">Your Name</label>
                        <input onChange={this.nameOnChange} className="form-control" type="text" placeholder=""/>
                      </div>

                      <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                        <label className="form-label">Delivery Address</label>
                        <textarea onChange={this.addressOnChange} rows={2}  className="form-control" type="text" placeholder=""/>
                      </div>

                      <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
                        <button onClick={this.confirmOnClick} className="btn  site-btn">{this.state.confirmBtn}</button>
                      </div>

                    </div>

                  </div>

                </div>

              </div>

            </Col>





          </Row>
        </div>


      </Container>

      { this.PageRefresh() }

      { this.PageRedirect() }

    </Fragment>
  )
}
}

export default Cart;
