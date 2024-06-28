

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Home/Controllers/home_controller32.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/Network/Controllers/network_controller32.dart';

class HomeView32 extends GetView<HomeController32> {
  final NetworkController32 _networkController32 = Get.find<NetworkController32>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home View'), centerTitle: true,),
      body: Center(
        child: Obx(() => Text(_networkController32.connectionStatus.value==1 ? "WIFI Connected" : (_networkController32.connectionStatus==2 ? "Mobile Internet" : "No Connection"), style: const TextStyle(fontSize: 20),),),
      ),
    );
  }
}