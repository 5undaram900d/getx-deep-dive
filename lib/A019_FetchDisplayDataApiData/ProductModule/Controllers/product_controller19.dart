
import 'package:get/get.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/ApiModule/api_services19.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/ProductModule/Models/product_model19.dart';

class ProductController19 extends GetxController{
  var isLoading = true.obs;
  // var productList = List<ProductModel19>().obs;
  var productList = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try{
      isLoading(true);
      var products = await ApiServices19.fetchProducts();
      if(products!=null){
        productList.assignAll(products);
      }
    }
    finally{
      isLoading(false);
    }
  }
}