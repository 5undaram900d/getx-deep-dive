
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController90 extends GetxController{
  final GlobalKey<FabCircularMenuPlusState> fabKey = GlobalKey();

  openCloseFabMenu(){
    if(fabKey.currentState!.isOpen){
      fabKey.currentState!.close();
    }
  }
}