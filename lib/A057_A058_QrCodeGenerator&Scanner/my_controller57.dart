
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class MyController57 extends GetxController {

  TextEditingController qrContentEditingController = TextEditingController();

  var qrCode = ''.obs;

  String scannedQrCode = '';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  Future<void> scanQr() async {
    try{
      scannedQrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', false, ScanMode.QR,);
      if(scannedQrCode!="-1"){
        Get.snackbar('Result', 'Qr Code $scannedQrCode', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green.withOpacity(0.2), colorText: Colors.green,);
      }
    } on PlatformException {
      Get.snackbar('Error', 'Something went wrong', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red.withOpacity(0.2), colorText: Colors.red,);
    }
  }

}