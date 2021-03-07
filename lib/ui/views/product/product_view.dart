import 'package:flutter/material.dart';
import 'package:sohii/ui/views/dropdown/dropdownsize_view.dart';
import 'package:stacked/stacked.dart';

import 'product_viewmodel.dart';
import 'products.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.nonReactive(
        builder: (context, model, child) => FutureBuilder(
              builder: (context, futuremodel) {
                List<Products> data = futuremodel.data;
                if (futuremodel.hasData) {
                  return Flexible(
                    child: ListView.builder(
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
                                        Image(
                                          image: AssetImage("assets/image/" +
                                              data[index].product),
                                          height: 350,
                                          width: 350,
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
                                      children: [
                                        Container(
                                          width: 350,
                                          child: Text(data[index].description),
                                        ),
                                        DropDownSize(),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        SizedBox(
                                          width: 350,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              elevation: 1.0,
                                              shadowColor: Colors.cyan,
                                            ),
                                            child: Text("in den Warenkorb"),
                                            onPressed: () => {},
                                          ),
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
