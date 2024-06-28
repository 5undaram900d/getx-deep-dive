
import 'package:get/get.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Network/Controllers/network_controller32.dart';

class NetworkBinding32 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController32>(() => NetworkController32());
  }
}