
import 'package:get/get.dart';
import 'package:getx_tut/A072_NavigationDrawer/Bindings/home_binding72.dart';
import 'package:getx_tut/A072_NavigationDrawer/Routes/routes72.dart';
import 'package:getx_tut/A072_NavigationDrawer/Views/chat_view72.dart';
import 'package:getx_tut/A072_NavigationDrawer/Views/photo_view72.dart';
import 'package:getx_tut/A072_NavigationDrawer/Views/video_view72.dart';
import 'package:getx_tut/A072_NavigationDrawer/home_screen72.dart';

class AppPages72 {
  AppPages72._();

  static const INITIAL = Routes72.HOME;

  static final routes = [
    GetPage(name: Paths72.HOME, page: ()=> const HomeScreen72(), binding: HomeBinding72(),),
    GetPage(name: Paths72.PHOTO, page: ()=> const PhotoView72(),),
    GetPage(name: Paths72.VIDEO, page: ()=> const VideoView72(),),
    GetPage(name: Paths72.CHAT, page: ()=> const ChatView72(),),
  ];
}