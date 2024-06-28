
import 'package:get/get.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Home/Controllers/home_controller32.dart';

class HomeBinding32 extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController32>(() => HomeController32(),);
  }
}