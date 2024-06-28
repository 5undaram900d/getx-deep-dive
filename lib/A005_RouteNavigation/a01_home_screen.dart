
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A005_RouteNavigation/a01_next_screen.dart';
import 'package:getx_tut/A005_RouteNavigation/a01_next_screen_cancel_route.dart';
import 'package:getx_tut/A005_RouteNavigation/a01_next_screen_return_argument.dart';
import 'package:getx_tut/A005_RouteNavigation/a01_next_screen_with_argument.dart';

class HomeScreen5 extends StatelessWidget {
  const HomeScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Navigation'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const NextScreen());
              },
              child: const Text('Next Screen'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const NextScreen(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: const Duration(milliseconds: 3000),
                  curve: Curves.bounceInOut,
                );
              },
              child: const Text('Next Screen with full screen dialog'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.off(() => const NextScreen());      /// for cancel to back from one Route
                // Get.offAll(() => const NextScreenUnable2Back()); /// for cancel to back from all route
              },
              child: const Text('Next Screen with unable to back'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const NextScreenWithArgument(), arguments: 'Data comes from the home screen');
              },
              child: const Text('Next Screen with some arguments'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () async{
                var data = await Get.to(() => NextScreenReturnArgument(),);
                debugPrint('The receive data is $data');
              }, 
              child: const Text('Get back data'),
            ),
          ],
        ),
      ),
    );
  }
}
