
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Splash/my_controller100.dart';

class HomeScreen100 extends StatelessWidget {
  MyController100 controller = Get.put(MyController100());

  HomeScreen100({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Splash View'), centerTitle: true,),
        body: const Center(
          child: Text('SplashView is working', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
        ),
      ),
    );
  }
}




/// Logic is not working properly, after splashScreen screen not change