import 'product.dart';
import 'package:http/http.dart' as http;

Future<List<Products>> fetchProducts() async {

  String url = "http://192.168.0.200/user_app/product.php";
  final response = await http.get(url);
  return productsFromJson(response.body);
}