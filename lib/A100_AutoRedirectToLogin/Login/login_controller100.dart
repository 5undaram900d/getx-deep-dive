
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Enter/enter_screen100.dart';

class LoginController100 extends GetxController{
  final getStorage = GetStorage();

  login(){
    getStorage.write("id", 1);
    getStorage.write("name", "Sundaram Sharma");
    Get.to(()=> EnterScreen100());
  }

}