
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A066_UserLocation&Address/my_controller66.dart';

class HomeScreen66 extends StatelessWidget {
  MyController66 controller = Get.put(MyController66());

  HomeScreen66({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(title: const Text('User Location & Address'),),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.location_on, color: Colors.yellow, size: 40,),
                const SizedBox(height: 4,),
                const Text('User Location', style: TextStyle(color: Colors.yellow, fontSize: 30, decoration: TextDecoration.underline,),),
                const SizedBox(height: 10,),
                Obx(()=>Text(controller.latitude.value, style: const TextStyle(color: Colors.white, fontSize: 25,),),),
                const SizedBox(height: 6,),
                Obx(()=> Text(controller.longitude.value, style: const TextStyle(color: Colors.white, fontSize: 25,),),),
                const SizedBox(height: 6,),
                Obx(()=> Text(controller.address.value, style: const TextStyle(color: Colors.white, fontSize: 25,),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
