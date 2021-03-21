import 'package:flutter/material.dart';
import 'package:sohii/ui/views/body/shoppingcartbutton/shoppingcartbutton_view.dart';
import 'package:sohii/ui/views/body/sizeselector/sizeselector_view.dart';
import 'package:sohii/widgets/entrance_fader.dart';
import 'package:stacked/stacked.dart';

import 'product_viewmodel.dart';

class ProductView extends StatelessWidget {
  ProductView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
        builder: (context, model, child) => Container(
              child: model.hasError
                  ? Center(
                      child: Container(
                        child: Text(
                          "Something went wrong",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    )
                  : model.isBusy
                      ? CircularProgressIndicator()
                      : Flexible(
                          child: ListView.builder(
                              itemCount: model.data.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: EntranceFader(
                                    offset: Offset(-32, 0),
                                    delay: Duration(milliseconds: 400),
                                    duration: Duration(seconds: 1),
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
                                                            BorderRadius
                                                                .circular(50),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                int.parse(model
                                                                    .data[index]
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
                                                              model.data[index]
                                                                  .product),
                                                      height: 350,
                                                      width: 350,
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 40,
                                                  child: Text(
                                                    model.data[index]
                                                        .productInformation,
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
                                                  child: Text(model
                                                      .data[index].description),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 350,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 34),
                                                  child: SizeSelectorView(),
                                                ),
                                                ShoppingCartButtonView(
                                                  products: model.data[index],
                                                  buttonColor: model
                                                      .data[index].mainColour,
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
                                  ),
                                );
                              }),
                        ),
            ),
        viewModelBuilder: () => ProductViewModel());
  }
}
