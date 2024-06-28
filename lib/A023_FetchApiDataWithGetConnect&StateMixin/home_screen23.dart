
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Routes23/app_pages23.dart';

class HomeScreen23 extends StatelessWidget {
  const HomeScreen23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: AppPages23.INITIAL,
      getPages: AppPages23.routes,
    );
  }
}
