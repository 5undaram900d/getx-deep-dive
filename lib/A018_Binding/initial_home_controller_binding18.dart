
import 'package:get/get.dart';
import 'package:getx_tut/A018_Binding/initial_home_controller18.dart';

class initialHomeControllerBinding18 extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<InitialHomeController18>(() => InitialHomeController18());
  }
}