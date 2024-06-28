
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A033_ImagePickerFromGallery&Camera/image_upload_provider34.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class HomeController33 extends GetxController{
  ///Selected variable
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  ///Crop variable
  var cropImagePath = ''.obs;
  var cropImageSize = ''.obs;

  ///Compress variable
  var compressImagePath = ''.obs;
  var compressImageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if(pickedFile!=null){
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value = "${((File(selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)} MB";

      ///Crop
      final cropImageFile = await ImageCropper().cropImage(sourcePath: selectedImagePath.value, maxWidth: 512, maxHeight: 512, compressFormat: ImageCompressFormat.jpg);
      cropImagePath.value = cropImageFile!.path;
      cropImageSize.value = "${((File(cropImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)} MB";

      ///Compress
      final dir = Directory.systemTemp;
      final targetPath = "${dir.absolute.path}/temp.jpg";
      var compressedFile = await FlutterImageCompress.compressAndGetFile(cropImagePath.value, targetPath, quality: 90);
      compressImagePath.value = compressedFile!.path;
      compressImageSize.value = "${((File(compressImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)} MB";
      uploadImage(compressedFile);

    }
    else{
      Get.snackbar('Error', 'No image selected', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.red,);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
  }

  void uploadImage(XFile file){
    Get.dialog(const Center(child: CircularProgressIndicator(),), barrierDismissible: false);
    ImageUploadProvider34().uploadImage(file).then((resp) {
        Get.back();
        if(resp == "success"){
          Get.snackbar('Success', 'File Upload', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green.withOpacity(0.2), colorText: Colors.green,);
        }
        else if(resp == "fail"){
          Get.snackbar('Error', 'File upload failed', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.red,);
        }
      },
      onError: (err) {
        Get.back();
        Get.snackbar('Error', 'File upload failed', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.red,);
      }
    );
  }
}