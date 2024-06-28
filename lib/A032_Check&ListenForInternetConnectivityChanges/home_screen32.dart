
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Network/Bindings/network_binding32.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Routes/app_pages32.dart';

class HomeScreen32 extends StatelessWidget {
  const HomeScreen32({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages32.INITIAL,
      getPages: AppPages32.routes,
      initialBinding: NetworkBinding32(),
    );
  }
}
