
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A125_AnimatedFullScreenSearchDialog/search_screen125.dart';

class HomeScreen125 extends StatelessWidget {
  const HomeScreen125({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Full Screen Search Dialog'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Get.to(
                  ()=>const SearchScreen125(),
                  fullscreenDialog: true,
                  transition: Transition.downToUp,
                  duration: const Duration(milliseconds: 600),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: const Center(child: Text('Home Screen'),),
      ),
    );
  }
}
