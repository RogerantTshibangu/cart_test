import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  //static var products;

  Products({
    this.id,
    this.productName,
    this.category,
    this.description,
    this.detail,
    this.price,
    this.image,
    this.quantity = 1,
  });

  String id;
  String productName;
  String category;
  String description;
  String price;
  String detail;
  String image;
  int quantity;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    id: json["id"],
    productName: json["product_name"],
    category: json["category"],
    description: json["description"],
    detail: json["detail"],
    price: json["price"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_name": productName,
    "category": category,
    "description": description,
    "detail": detail,
    "price": price,
    "image": image,
  };

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }
  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
//  List<Products> get Products {
//    return [...Products];
//  }
//
//  Products findById(String id) {
//    return Products.firstWhere((pdt) => pdt.id == id);
//  }
 }
//////////////////////////////////////////////////////////////////////////////

