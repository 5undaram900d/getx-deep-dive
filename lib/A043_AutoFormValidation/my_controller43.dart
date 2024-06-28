
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController43 extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  var email = '';
  var password = '';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value){
    if(!GetUtils.isEmail(value)){
      return "Provide valid email";
    }
    return null;
  }

  String? validatePassword(String value){
    if(value.length<=6){
      return "Password must be 6 characters";
    }
    return null;
  }

  void checkLogin(){
    final isValid = loginFormKey.currentState!.validate();
    if(!isValid){
      return;
    }
    loginFormKey.currentState!.save();
  }
}