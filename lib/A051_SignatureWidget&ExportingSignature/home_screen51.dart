
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A051_SignatureWidget&ExportingSignature/my_controller51.dart';
import 'package:signature/signature.dart';

class HomeScreen51 extends StatelessWidget {
  MyController51 controller = Get.put(MyController51());

  HomeScreen51({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              ()=> Signature(
                height: context.height-50,
                controller: controller.signatureController,
                backgroundColor: controller.padColor.value,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: ()=> controller.selectPadColor(),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: const Text('Pad Color', style: TextStyle(color: Colors.white,),),
                  ),
                  ElevatedButton(
                    onPressed: ()=> controller.selectPenColor(),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                    child: const Text('Pen Color', style: TextStyle(color: Colors.white,),),
                  ),
                  ElevatedButton(
                    onPressed: ()=> controller.exportSignature(),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text('Export', style: TextStyle(color: Colors.black,),),
                  ),
                  ElevatedButton(
                    onPressed: ()=> controller.signatureController.clear(),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text('Clear', style: TextStyle(color: Colors.white,),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
