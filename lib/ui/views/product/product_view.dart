import 'package:flutter/material.dart';
import 'package:sohii/ui/views/dropdown/dropdownsize_view.dart';
import 'package:sohii/ui/views/shoppingcartButton/shoppingcartbutton_view.dart';
import 'package:stacked/stacked.dart';

import 'product_viewmodel.dart';
import '../../../datatypes/products.dart';

class ProductView extends StatelessWidget {
  ProductView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
        builder: (context, model, child) => FutureBuilder(
              builder: (context, futuremodel) {
                List<Products> data = futuremodel.data;
                if (futuremodel.hasData) {
                  return Flexible(
                    child: ListView.builder(
                        cacheExtent: 5000.0,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(int.parse(
                                                        data[index]
                                                            .mainColour)),
                                                    blurRadius: 75,
                                                    spreadRadius: 70,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  "assets/image/" +
                                                      data[index].product),
                                              height: 350,
                                              width: 350,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 350,
                                          height: 40,
                                          child: Text(
                                            data[index].productInformation,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 350,
                                          child: Text(data[index].description),
                                        ),
                                        Container(
                                          height: 100,
                                          width: 350,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 34),
                                          child: DropDownSize(),
                                        ),
                                        // SizedBox(
                                        //   height: 50,
                                        // ),
                                        ShoppingCartButtonView(
                                          size: model.selectedSize,
                                          products: data[index],
                                          buttonColor: data[index].mainColour,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 500,
                                )
                              ],
                            ),
                          );
                        }),
                  );
                } else if (futuremodel.hasError) {
                  return Center(
                    child: Container(
                      child: Text(
                        "Something went wrong",
                        style: TextStyle(color: Colors.orangeAccent),
                      ),
                    ),
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ));
                }
              },
              future: model.picturePath,
            ),
        viewModelBuilder: () => ProductViewModel());
  }
}
