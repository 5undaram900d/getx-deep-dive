
import 'package:get/get.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Modules23/Bindings23/home_binding23.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Modules23/Views23/home_view23.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Routes23/app_routes23.dart';

class AppPages23 {
  static const INITIAL = Routes23.HOME;
  static final routes = [
    GetPage(name: Paths23.HOME, page: () => HomeView23(), binding: HomeBinding23(),),
  ];
}