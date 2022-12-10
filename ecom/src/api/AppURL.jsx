class AppURL {

  static BaseURL = "http://127.0.0.1:8000/api" ;
  
  static VisitorDetails = this.BaseURL + '/visitor/store';
  static ContactPost = this.BaseURL + '/contact/store';
  static AllSiteInfo= this.BaseURL + '/siteinfo/show';
  static AllCategoryDetails = this.BaseURL + '/category/index';
  static AllSliders = this.BaseURL + '/slider/index';
  static AllNotfications = this.BaseURL + '/notification/index';

  static ProductListByRemark(remark) {
    return this.BaseURL + '/products/remark/' + remark;
  }

  static ProductListByCategory(category) {
    return this.BaseURL + '/products/category/' + category;
  }

  static ProductListBySubcategory(category, subcategory) {
    return this.BaseURL + '/products/subcategory/' + category + '/' + subcategory;
  }

  static ProductDetailById(product) {
    return this.BaseURL + '/products/show/' + product;
  }

  static ProductListBySearch(searchkey) {
    return this.BaseURL + '/products/search/' + searchkey;
  }

  static UserLogin = this.BaseURL + '/login';

  static UserData = this.BaseURL + '/user';

  static UserRegister = this.BaseURL + '/register';

  static UserForgotPassword = this.BaseURL + '/forgot';

  static UserResetPassword = this.BaseURL + '/reset';

  static SimilarProduct(subcategory) {
       return this.BaseURL + "/products/similar/" + subcategory;
  }

  static ReviewList(product){
       return this.BaseURL + "/reviews/show/" + product;
  }

  static PostReview = this.BaseURL + '/reviews/store';

  static addToCart = this.BaseURL + '/cart/add';

  static CartCount(email){
       return this.BaseURL + "/cart/count/" + email;
  }

  static CartList(email){
       return this.BaseURL + "/cart/" + email;
  }

  static RemoveCart(id){
       return this.BaseURL + "/cart/remove/" + id;
  }

  static IncrementCart(id){
       return this.BaseURL + "/cart/increment/" + id;
  }

  static DecrementCart(id){
       return this.BaseURL + "/cart/decrement/" + id;
  }

  static AddFavourite(product_code, email) {
    return this.BaseURL + '/favourites/add/' + product_code + '/' + email;
  }

  static FavouriteList(email) {
    return this.BaseURL + '/favourites/' + email;
  }

  static FavouriteCount(email){
       return this.BaseURL + "/favourites/count/" + email;
  }

  static RemoveFavourite(product_code, email) {
    return this.BaseURL + '/favourites/remove/' + product_code + '/' + email;
  }

  static CartOrder = this.BaseURL + '/order/store';

  static OrderPaid(order){
       return this.BaseURL + "/order/paid/" + order;
  }

  static OrderList(email) {
    return this.BaseURL + '/order/' + email;
  }

}

export default AppURL
