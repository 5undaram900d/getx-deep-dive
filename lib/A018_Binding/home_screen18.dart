
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A018_Binding/all_controller_binding18.dart';
import 'package:getx_tut/A018_Binding/initial_home18.dart';
import 'package:getx_tut/A018_Binding/my1_controller18.dart';

class HomeScreen18 extends StatelessWidget {
  const HomeScreen18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AllControllerBinding18(),

      /**
        If binding applied at the root level
          getPages: [
            GetPage(
              name: '/initialHome18',
              page: () => InitialHome18(),
              binding: HomeControllerBinding18(),
            ),
          ]
       **/

      /**
        Binding Builder (If we don't want to use separate binding class)
          getPages: [
            name: 'initialHome18',
            page: () => InitialHome18,
            binding: BindingBuilder(() => {
              Get.lazyPut<HomeControllerBinding18>(() => HomeControllerBinding18()),
            }),
          ]
       **/

      home: Scaffold(
        appBar: AppBar(title: const Text('Binding'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('The value is ${Get.find<My1Controller18>().count}', style: const TextStyle(fontSize: 25),),),
              ElevatedButton(onPressed: () => Get.find<My1Controller18>().increment(), child: const Text('Increment'),),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Get.to(const InitialHome18());

                  /**
                  /// for named route
                  Get.toNamed("/initialHome18");
                  **/

                  /**
                  /// for normal route
                  Get.to(InitialHome18(), binding: HomeControllerBinding());
                  **/
                },
                child: const Text('Initial Home'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}


/**
  ---------Smart management---------
    GetX provides SmartManagement that lets us configure how dependencies behave in terms of memory management

    GetMaterialApp {
      smartManagement: SmartManagement.full or SmartManagement.keepFactory or SmartManagement.onlyBuilder
    }

    +++ SmartManagement.full +++
    Everything gets dispose as soon as the route is removed from navigation stack, unless declare permanent.

    +++ SmartManagement.keepFactory +++
    Just like SmartManagement.full, it will remove it's dependencies, when it's not being used anymore.
    However it will keep their factory, which means it will recreate the dependency if you need that instance again.

    +++ SmartManagement.onlyBuilders +++
    With this option, only controllers started in init: or loaded into a Binding with Get.lazyPut() will be displayed.
    if you use Get.put() or Get.putAsync() or any other approach, SmartManagement will not have permissions to exclude this dependency.
 */
