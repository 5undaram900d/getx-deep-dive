
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A072_NavigationDrawer/Bindings/home_binding72.dart';
import 'package:getx_tut/A072_NavigationDrawer/Controllers/home_controller72.dart';
import 'package:getx_tut/A072_NavigationDrawer/Routes/app_pages72.dart';
import 'package:getx_tut/A072_NavigationDrawer/navigation_drawer72.dart';

class HomeScreen72 extends GetView<HomeController72> {
  const HomeScreen72({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Navigation Drawer'), centerTitle: true,),
        drawer: const NavigationDrawer72(),
      ),
      // initialRoute: AppPages71.INITIAL,
      getPages: AppPages72.routes,
      initialBinding: HomeBinding72(),
    );
  }
}
