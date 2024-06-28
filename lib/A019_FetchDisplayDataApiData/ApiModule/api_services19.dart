
import 'package:getx_tut/A019_FetchDisplayDataApiData/ProductModule/Models/product_model19.dart';
import 'package:http/http.dart' as http;

class ApiServices19 {
  static Future<List<ProductModel19>?> fetchProducts() async {
    String uri = 'https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop';
    var url = Uri.parse(uri);
    var response = await http.get(url);
    if(response.statusCode==200){
      var jsonData = response.body;
      print(jsonData);
      return productModel19FromJson(jsonData);
    }
  }
}



///by getX
// class ApiServices19 {
//   static var client = http.Client();
//   static Future<List<ProductModel19>?> fetchProducts() async {
//     String uri = 'https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop';
//     var url = Uri.parse(uri);
//     var response = await client.get(url);
//     if(response.statusCode==200){
//       var jsonData = response.body;
//       print(jsonData);
//       return productModel19FromJson(jsonData);
//     }
//   }
// }