class Products {
  String _product;
  String _description;
  String _productInformation;
  String _mainColour;

  Products(this._product, this._description, this._productInformation,
      this._mainColour);
  get product => this._product;

  get description => this._description;

  get productInformation => this._productInformation;

  get mainColour => this._mainColour;
}
