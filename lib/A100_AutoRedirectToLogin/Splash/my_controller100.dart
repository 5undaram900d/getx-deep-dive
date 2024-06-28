
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Enter/enter_screen100.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Login/login_screen100.dart';

class MyController100 extends GetxController{
  final getStorage = GetStorage();

  @override
  void onReady() {
    if(getStorage.read("id")!=null){
      Future.delayed(const Duration(milliseconds: 2000), ()=> Get.to(()=> EnterScreen100(),),);
    }
    else{
      Get.to(()=> LoginScreen100());
    }
    super.onReady();
  }

}