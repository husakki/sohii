class Products {
  String _product;
  String _description;
  String _productInformation;

  Products(String pro, String descript, String info) {
    this._product = pro;
    this._description = descript;
    this._productInformation = info;
  }

  get product => this._product;

  get description => this._description;

  get productInformation => this._productInformation;
}
