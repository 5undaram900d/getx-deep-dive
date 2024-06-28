
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Login/login_screen100.dart';

class EnterController100 extends GetxController{
  final getStorage = GetStorage();
  var name = "";

  @override
  void onInit() {
    name = getStorage.read("name");
    super.onInit();
  }

  logout(){
    getStorage.erase();
    Get.to(()=> LoginScreen100());
  }

}