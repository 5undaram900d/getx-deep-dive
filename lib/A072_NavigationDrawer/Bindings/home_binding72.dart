
import 'package:get/get.dart';
import 'package:getx_tut/A072_NavigationDrawer/Controllers/home_controller72.dart';

class HomeBinding72 extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController72>(() => HomeController72(),);
  }
}