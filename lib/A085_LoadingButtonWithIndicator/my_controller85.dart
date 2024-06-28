
import 'package:get/get.dart';

class MyController85 extends GetxController{
  var isLoading = false.obs;

  void uploadFile() async{
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2),);
    isLoading.value = false;
  }
}