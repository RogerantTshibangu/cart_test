
import 'package:cart_test/my_cart.dart';
import 'package:cart_test/shop_item.dart';
import 'package:flutter/material.dart';
import 'product.dart';
import 'product_api.dart';

//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//
//      title: 'Adding to cart',
//      home: MyHomePage(),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget {
//
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: AppBar(title: Text('Cart Test from MySQL'),
//        actions: <Widget>[
//          IconButton(icon: Icon(Icons.shopping_cart, size: 30,),
//              onPressed: (){
//             //   Navigator.of(context).push(_createRoute3());
//              })
//        ],
//      ),
//      body: Container(
//        padding: EdgeInsets.only(left: 20, bottom: 20, right: 15),
//        child: FutureBuilder(
//          future: fetchProducts(),
//          builder: (context, snapshot) {
//            if (snapshot.hasData) {
//              return ListView.builder(
//                  itemCount: snapshot.data.length,
//                  shrinkWrap: true,
//                  itemBuilder: (BuildContext context, index) {
//                    Products PdtItem = snapshot.data[index];
//                    return Card(
//                      child: Padding(
//                          padding: EdgeInsets.only(
//                              left: 10.0, right: 10.0, top: 10.0),
//                          child: Row(
//                            mainAxisAlignment:
//                            MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              GestureDetector(
//                                onTap: (){
//                                  //      Navigator.push( context, MaterialPageRoute(builder: (context) => DetailsPage(products: PdtItem) ), );
//
//                                },
//                                child: Container(
//                                  child: Row(children: [
//
//                                    Image.network(
//                                        '${PdtItem.image}',
//                                        fit: BoxFit.cover,
//                                        height: 85.0,
//                                        width: 85.0 ),
//                                    SizedBox(width: 10.0),
//                                    Column(
//                                        crossAxisAlignment:
//                                        CrossAxisAlignment.start,
//                                        children: [
//                                          Text('${PdtItem.productName}',
//                                              style: TextStyle(
//                                                  fontWeight: FontWeight.w700,
//                                                  fontSize: 18,
//                                                  color: (Color(0xff520d55)))),
//                                          Text("\R${PdtItem.price}",
//                                              style: TextStyle(
//                                                  fontWeight: FontWeight.w400,
//                                                  fontSize: 15,
//                                                  color: (Color(0xff520d55)))),
//                                          Text('${PdtItem.description}',
//                                              style: TextStyle(
//                                                  fontWeight:
//                                                  FontWeight.w300,
//                                                  color: (Color(
//                                                      0xff520d55)), fontStyle: FontStyle.italic)
//                                          ),
//                                        ]),
//                                  ]),
//                                ),
//                              ),
//                              Container(
//                                child: IconButton(
//                                    icon: Icon(Icons.add_shopping_cart),
//                                    color: Colors.black,
//                                    onPressed: () {
//
//                                    }),
//
//                              )
//                            ],
//                          )),
//                    );
//                  });
//            }
//            return CircularProgressIndicator();
//          },
//        ),
//      )
//     );
//  }
//}
//
//class ProductModel{
//  String name;
//  int price;
//
//  ProductModel(String name, int price){
//    this.name = name;
//    this.price = price;
//  }
//}

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => ShopItems(),
        '/checkout': (BuildContext context) => Checkout()
      },
    );
  }
}