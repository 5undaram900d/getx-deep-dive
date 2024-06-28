
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:signature/signature.dart';

class MyController51 extends GetxController {
  var padColor = Colors.black.obs;
  var penColor = Colors.white.obs;

  late SignatureController signatureController;

  @override
  void onInit() {
    initializeSignatureController();
    signatureController = SignatureController(penColor: penColor.value, penStrokeWidth: 5,);
    super.onInit();
  }

  @override
  void onClose() {
    signatureController.dispose();
  }

  void initializeSignatureController() {
    signatureController = SignatureController(penColor: penColor.value, penStrokeWidth: 5,);
  }

  void selectPadColor() {
    Get.dialog(
      Center(
        child: Dialog(
          child: ColorPicker(
            pickerColor: padColor.value,
            onColorChanged: (color)=> padColor.value = color,
            showLabel: true,
            pickerAreaHeightPercent: 0.8,
          ),
        ),
      )
    );
  }

  void selectPenColor() {
    Get.dialog(
        Center(
          child: Dialog(
            child: ColorPicker(
              pickerColor: penColor.value,
              onColorChanged: (color) {
                penColor.value = color;
                initializeSignatureController();
              },
              showLabel: true,
              pickerAreaHeightPercent: 0.8,
            ),
          ),
        )
    );
  }

  void exportSignature() async{
    final status = await Permission.storage.status;
    if(!status.isGranted){
      await Permission.storage.request();
    }
    if(signatureController.isNotEmpty){
      final exportedSignature = SignatureController(penColor: penColor.value, penStrokeWidth: 5, exportBackgroundColor: padColor.value, points: signatureController.points);
      final signature = await exportedSignature.toPngBytes();
      exportedSignature.dispose();
      final result = await ImageGallerySaver.saveImage(signature!, name: "MySignature.png");
      final isExported = result['isSuccess'];
      if(isExported){
        Get.snackbar("Success", "Signature exported", backgroundColor: Colors.green.withOpacity(0.2), colorText: Colors.green);
      }
      else{
        Get.snackbar("Error", "Signature not exported", backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.red);
      }
    }
    else{
      Get.snackbar("Error", "Provide signature", backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.red);
    }
  }

}




