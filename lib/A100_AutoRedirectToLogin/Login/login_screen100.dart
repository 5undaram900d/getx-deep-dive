
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Login/login_controller100.dart';

class LoginScreen100 extends StatelessWidget {
  LoginController100 controller = Get.put(LoginController100());

  LoginScreen100({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Login Screen'), centerTitle: true,),
        body: Center(
          child: ElevatedButton(onPressed: controller.login(), child: const Text('Login'),),
        ),
      ),
    );
  }
}
