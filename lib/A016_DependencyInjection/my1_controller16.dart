
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class My1Controller16 extends GetxController{
  void incrementCounter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    debugPrint('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }
}