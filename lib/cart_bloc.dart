/// The [dart:async] is necessary for using streams
import 'dart:async';
import 'product.dart';

class CartItemsBloc {
  /// The [cartStreamController] is an object of the StreamController class
  /// .broadcast enables the stream to be read in multiple screens of our app
  final cartStreamController = StreamController.broadcast();

  /// The [getStream] getter would be used to expose our stream to other classes
  Stream get getStream => cartStreamController.stream;

  /// The [allItems] Map would hold all the data this bloc provides
  final Map allItems = {
    'shop items':[ {'name': 'App dev kit', 'price': 20, 'id': 1},
      {'name': 'App consultation', 'price': 100, 'id': 2},
      {'name': 'Logo Design', 'price': 10, 'id': 3},
      {'name': 'Code review', 'price': 90, 'id': 4},],
    'cart items': []
  };
  /// [addToCart] adds items from the shop to the cart
  void addToCart(Products) {
    allItems['shop items'].remove(Products);
    allItems['cart items'].add(Products);
    cartStreamController.sink.add(allItems);
  }

  /// [removeFromCart] removes items from the cart, back to the shop
  void removeFromCart(Products) {
    allItems['cart items'].remove(Products);
    allItems['shop items'].add(Products);
    cartStreamController.sink.add(allItems);
  }
  /// The [dispose] method is used
  /// to automatically close the stream when the widget is removed from the widget tree
  void dispose() {
    cartStreamController.close(); // close our StreamController
  }
}
final bloc = CartItemsBloc();  // add to the end of the file