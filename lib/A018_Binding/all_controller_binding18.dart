
import 'package:get/get.dart';
import 'package:getx_tut/A018_Binding/initial_home18.dart';
import 'package:getx_tut/A018_Binding/initial_home_controller18.dart';
import 'package:getx_tut/A018_Binding/my1_controller18.dart';

class AllControllerBinding18 extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<My1Controller18>(() => My1Controller18());
    Get.lazyPut<InitialHome18>(() => const InitialHome18());
    Get.lazyPut<InitialHomeController18>(() => InitialHomeController18());
  }
}