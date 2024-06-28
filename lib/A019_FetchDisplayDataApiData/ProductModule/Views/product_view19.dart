
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/CommonModule/app_color19.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/CommonModule/app_string19.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/ProductModule/Controllers/product_controller19.dart';

class ProductView19 extends StatelessWidget {
  ProductView19({Key? key}) : super(key: key);

  final ProductController19 productController19 = Get.put(ProductController19());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppString19.productList),),
      body: Obx(() {
        if(productController19.isLoading.value){
          return const Center(child: CircularProgressIndicator(),);
        }
        else{
          return ListView.builder(
            itemCount: productController19.productList.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            productController19.productList[index].imageLink,
                            width: 150,
                            height: 100,
                            fit: BoxFit.fill,
                            color: AppColor19.tealColor,
                            colorBlendMode: BlendMode.color,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(productController19.productList[index].name, style: const TextStyle(fontSize: 18),),
                            Text(productController19.productList[index].brand, style: const TextStyle(fontSize: 14, color: AppColor19.grey),),
                            Text(productController19.productList[index].category, style: const TextStyle(fontSize: 14, color: AppColor19.grey),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(height: 2, color: AppColor19.grey200,),
                ],
              );
            },
          );
        }
      }),
    );
  }
}
