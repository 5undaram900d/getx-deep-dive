
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A099_VideoTrimmer/video_trim_view99.dart';

class MyController99 extends GetxController{
  pickVideo() async{
    FilePickerResult ? result = await FilePicker.platform.pickFiles(type: FileType.video, allowCompression: false,);
    if(result!=null){
      File file = File(result.files.single.path!);
      Get.to(()=> VideoTrimView99(argument: file));
    }
  }
}