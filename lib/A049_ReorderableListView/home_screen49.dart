
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A049_ReorderableListView/my_controller49.dart';

class HomeScreen49 extends StatelessWidget {
  MyController49 controller = MyController49();

  HomeScreen49({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reorderable ListView"), centerTitle: true,),
      body: Obx(
        ()=> ReorderableListView(
          children: controller.myFav.map(
            (e) => Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 8,),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8),),
                color: Colors.deepPurpleAccent,
              ),
              child: Text(e, style: TextStyle(fontSize: 18, color: Colors.deepOrange),),
              key: ValueKey(e),
            ),
          ).toList(),
          onReorder: ((oldIndex, newIndex) => controller.reorder(oldIndex, newIndex)),
        ),
      ),
    );
  }
}
