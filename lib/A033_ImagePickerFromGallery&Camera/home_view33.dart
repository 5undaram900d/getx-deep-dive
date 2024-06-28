
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A033_ImagePickerFromGallery&Camera/home_controller33.dart';
import 'package:image_picker/image_picker.dart';

class HomeView33 extends StatelessWidget {
  final HomeController33 homeController33 = HomeController33();

  HomeView33({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(()=> homeController33.selectedImagePath.value==''
                  ? const Text('Select Image from Camera/Gallery', style: TextStyle(fontSize: 20),)
                  : Image.file(File(homeController33.selectedImagePath.value),),
              ),
              const SizedBox(height: 10,),
              Obx(()=> Text(homeController33.selectedImageSize.value=='' ? '' : homeController33.selectedImageSize.value, style: const TextStyle(fontSize: 20),),),
              const SizedBox(width: double.infinity, height: 20,),
              ElevatedButton(onPressed: ()=> homeController33.getImage(ImageSource.camera), child: const Text('Camera'),),
              ElevatedButton(onPressed: ()=> homeController33.getImage(ImageSource.gallery), child: const Text('Gallery'),),
            ],
          ),
        ),
      ),
    );
  }
}
