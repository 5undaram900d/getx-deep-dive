
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A041_PlayVideoByChewiePackage&GetX/my_controller41.dart';

class HomeScreen41 extends StatelessWidget {
  const HomeScreen41({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Screen'), centerTitle: true,),
        body: Column(
          children: [
            GetBuilder<MyController41>(
              init: MyController41(),
              builder: (
                      (controller) => Expanded(
                        child: Center(
                          child: controller.chewieController!=null && controller.chewieController!.videoPlayerController.value.isInitialized
                              ? Chewie(controller: controller.chewieController!,)
                              : const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(),
                                    SizedBox(height: 10,),
                                    Text("Loading..."),
                                  ],
                                ),
                        ),
                      )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
