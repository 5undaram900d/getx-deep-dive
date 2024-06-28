
import 'package:get/get.dart';
import 'package:getx_tut/A009_GetxController/student9.dart';


/// Individual variable
class My1Controller9 extends GetxController{
  var student91 = Student91();
  void convertToUpperCase1(){
    student91.name.value = student91.name.value.toUpperCase();
  }
}

/// for complete class observable
class My2Controller9 extends GetxController{
  var student92 = Student92(name: 'VIshwakarma', age: 20).obs;
  void convertToUpperCase2(){
    student92.update((student92) {
      student92!.name = student92.name.toString().toUpperCase();
    });
  }
}