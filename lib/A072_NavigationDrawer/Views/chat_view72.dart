
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A072_NavigationDrawer/Controllers/home_controller72.dart';
import 'package:getx_tut/A072_NavigationDrawer/navigation_drawer72.dart';

class ChatView72 extends GetView<HomeController72> {
  const ChatView72({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer72(),
      appBar: AppBar(title: const Text('Chat View'), centerTitle: true,),
    );
  }
}
