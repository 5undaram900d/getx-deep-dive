
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/CommonModule/app_color19.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/CommonModule/app_string19.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/ProductModule/Views/product_view19.dart';

class HomeScreen19 extends StatelessWidget {
  const HomeScreen19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString19.fetchApiData,
      theme: ThemeData(primarySwatch: AppColor19.tealColor),
      home: ProductView19(),
    );
  }
}
