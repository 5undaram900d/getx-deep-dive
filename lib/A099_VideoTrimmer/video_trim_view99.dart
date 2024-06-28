
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A099_VideoTrimmer/video_trim_controller99.dart';
import 'package:video_trimmer/video_trimmer.dart';

class VideoTrimView99 extends StatelessWidget {
  VideoTrimmerController99 controller = Get.put(VideoTrimmerController99());
  
  File? argument;
  
  VideoTrimView99({super.key, required this.argument});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Video Trim Preview'), centerTitle: true,),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(bottom: 30),
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Obx(
                ()=> Visibility(
                  visible: controller.progressVisibility.value,
                  child: const LinearProgressIndicator(backgroundColor: Colors.red,),
                ),
              ),
              ElevatedButton(
                onPressed: controller.progressVisibility.value ? null : ()async{controller.saveVideo();},
                child: const Text('Save'),
              ),
              Expanded(child: VideoViewer(trimmer: controller.trimmer,),),
              Center(
                child: TrimViewer(
                  trimmer: controller.trimmer,
                  viewerHeight: 50,
                  viewerWidth: Get.width,
                  maxVideoLength: Duration(seconds: controller.trimmer.videoPlayerController!.value.duration.inSeconds,),
                  onChangeStart: (value){
                    controller.startValue.value = value;
                  },
                  onChangeEnd: (value){
                    controller.endValue.value = value;
                  },
                  onChangePlaybackState: (value){
                    controller.isPlaying.value = false;
                  },
                ),
              ),
              TextButton(
                onPressed: ()async{
                  bool playBackState = await controller.trimmer.videoPlaybackControl(startValue: controller.startValue.value, endValue: controller.endValue.value,);
                  controller.isPlaying.value = playBackState;
                },
                child: Icon(controller.isPlaying.value ? Icons.pause : Icons.play_arrow, size: 80, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
