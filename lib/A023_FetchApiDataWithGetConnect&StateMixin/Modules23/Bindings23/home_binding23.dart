
import 'package:get/get.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Modules23/Controllers23/home_controller23.dart';

class HomeBinding23 extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController23>(() => HomeController23(),);
  }
}