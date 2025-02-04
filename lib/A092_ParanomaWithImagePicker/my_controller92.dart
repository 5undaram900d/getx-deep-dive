
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MyController92 extends GetxController{
  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async{
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if(pickedFile!=null){
      selectedImagePath.value = pickedFile.path;
    }
    else{
      Get.snackbar("Error", "No image selected", snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.white, icon: const Icon(Icons.error),);
    }
  }

}