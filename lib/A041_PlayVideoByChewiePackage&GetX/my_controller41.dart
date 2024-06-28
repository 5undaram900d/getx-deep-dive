
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class MyController41 extends GetxController {

  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initializePlayer();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializePlayer() async{
    videoPlayerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    // await Future.wait([videoPlayerController.initialize()]);
    await videoPlayerController.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(playedColor: Colors.red, handleColor: Colors.cyanAccent, backgroundColor: Colors.cyanAccent, bufferedColor: Colors.greenAccent),
      placeholder: Container(color: Colors.greenAccent,),
      autoInitialize: true,
    );
    update();
  }

}