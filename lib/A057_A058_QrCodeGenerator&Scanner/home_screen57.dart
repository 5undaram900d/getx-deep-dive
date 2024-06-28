
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A057_A058_QrCodeGenerator&Scanner/my_controller57.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen57 extends StatelessWidget {
  
  MyController57 controller = MyController57();
  
  HomeScreen57({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('QR Generator'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(
                ()=> QrImageView(
                  data: controller.qrCode.value,
                  version: QrVersions.auto,
                  gapless: false,
                  size: 200,
                  // backgroundColor: Colors.blue,  ///by default: transparent
                  // foregroundColor: Colors.red,   ///by default: black
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  labelText: "QR Code",
                ),
                keyboardType: TextInputType.text,
                controller: controller.qrContentEditingController,
                onChanged: (val){
                  controller.qrCode.value = val;
                },
              ),
              ElevatedButton(onPressed: ()=> controller.scanQr(), child: const Text('Scan QR'),),
            ],
          ),
        ),
      ),
    );
  }
}
