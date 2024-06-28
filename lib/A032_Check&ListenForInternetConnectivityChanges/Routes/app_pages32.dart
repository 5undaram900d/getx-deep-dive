
import 'package:get/get.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Home/Bindings/home_binding32.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Home/Views/home_view32.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Routes/app_routes32.dart';

class AppPages32 {
  static const INITIAL = Routes32.HOME;
  static final routes = [
    GetPage(name: Paths32.HOME, page: () => HomeView32(), binding: HomeBinding32(),),
  ];
}