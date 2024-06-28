
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A092_paranomaWithImagePicker/my_controller92.dart';
import 'package:image_picker/image_picker.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class HomeScreen92 extends StatelessWidget {
  MyController92 controller = Get.put(MyController92());

  HomeScreen92({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Paranoma'), centerTitle: true,),
        body: Obx(
          ()=> PanoramaViewer(
            zoom: 1,
            animSpeed: 1.0,
            child: controller.selectedImagePath.value!='' ? Image.file(File(controller.selectedImagePath.value)) : Image.asset('assets/images/logo.png'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: ()=> controller.getImage(ImageSource.gallery),
          child: Icon(Icons.panorama),
        ),
      ),
    );
  }
}
