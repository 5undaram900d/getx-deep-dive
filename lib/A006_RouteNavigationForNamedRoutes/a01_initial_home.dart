
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A006_RouteNavigationForNamedRoutes/a01_home_screen.dart';
import 'package:getx_tut/A006_RouteNavigationForNamedRoutes/a01_next_screen.dart';

import 'a01_unknown_route.dart';

class InitialHome6 extends StatelessWidget {
  const InitialHome6({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/initialScreen",          /// It is not initial route show we can't use it here
      defaultTransition: Transition.zoom,
      unknownRoute: GetPage(name: '/notfound', page: () => const UnknownRoute()),
      getPages: [
        GetPage(name: '/initialHome', page: () => const InitialHome6(),),
        GetPage(name: '/homeScreen', page: () => const HomeScreen6()),
        /// also a method to send parameter
        GetPage(name: '/nextScreen/:dangerRate', page: () => const NextScreen6(), transition: Transition.leftToRight,),
      ],
      home: Scaffold(
        appBar: AppBar(title: const Text('Named route'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.toNamed("/homeScreen");
                },
                child: const Text('Go to HomeScreen'),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Get.offNamed("/homeScreen");
                },
                child: const Text('Go to HomeScreen w/o return'),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  /// method to send the parameter to next screen
                  Get.toNamed("/homeScreen?name=Sundaram Sharma&job=Flutter Developer");
                },
                child: const Text('Go to HomeScreen with some parameter'),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Get.toNamed("/x");
                },
                child: const Text('Go to Unknown Route'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
