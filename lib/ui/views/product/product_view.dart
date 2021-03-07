import 'package:flutter/material.dart';
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
                            color: Colors.deepOrange,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/image/" +
                                          data[index].product),
                                      height: 350,
                                      width: 350,
                                    ),
                                    SizedBox(
                                      width: 300,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 350,
                                          color: Colors.red,
                                          child: Text(data[index].description),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        SizedBox(
                                          width: 350,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                            ),
                                            child: Text("in den Warenkorb"),
                                            onPressed: () => {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 30, 0, 250),
                                    width: 350,
                                    height: 40,
                                    color: Colors.green,
                                    child: Text(
                                      data[index].productInformation,
                                    ),
                                  ),
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
