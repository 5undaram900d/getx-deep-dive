
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A064_ExpnadableBottomSheet/my_controller64.dart';

class HomeScreen64 extends StatelessWidget {
  MyController64 controller = MyController64();

  HomeScreen64({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Expandable Bottom Sheet'), centerTitle: true,),
        body: ExpandableBottomSheet(
          key: controller.key,              ///for ***** global key *****
          enableToggle: true,
          background: Container(
            color: Colors.deepPurpleAccent,
            child: Obx(()=> Center(child: Text('Background-${controller.expansionStatus.value}', style: const TextStyle(fontSize: 20, color: Colors.white,),),),),
          ),
          expandableContent: Container(
            height: 500,
            color: Colors.green,
            child: const Center(child: Text('Content', style: TextStyle(fontSize: 20, color: Colors.white,),),),
          ),
          persistentHeader: Container(
            height: 40,
            color: Colors.blue,
            child: const Center(child: Text('Header', style: TextStyle(fontSize: 20, color: Colors.white,),),),
          ),
          persistentFooter: Container(
            height: 60,
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: ()=> controller.key.currentState!.expand(), icon: const Icon(Icons.arrow_upward, color: Colors.white,),),
                IconButton(onPressed: ()=> controller.key.currentState!.expansionStatus, icon: const Icon(Icons.cloud, color: Colors.white,),),
                IconButton(onPressed: ()=> controller.key.currentState!.contract(), icon: const Icon(Icons.arrow_downward, color: Colors.white,),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
