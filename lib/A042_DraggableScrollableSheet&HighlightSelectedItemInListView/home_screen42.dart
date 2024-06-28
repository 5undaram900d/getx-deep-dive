
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A042_DraggableScrollableSheet&HighlightSelectedItemInListView/my_controller42.dart';

/**
 DraggableScrollableSheet:
    It is a widget which drags down from bottom and expands in vertical direction.
    It expands up to a certain fraction of the screen as specified and then enables scrolling within the expanded height.
 ***////

class HomeScreen42 extends StatelessWidget {
  MyController42 controller = MyController42();

  HomeScreen42({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Draggable Scrollable Sheet"),),
        body: Stack(
          children: [
            Container(
              height: context.height,
              width: context.width,
              color: Colors.teal,
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Text("Draggable Scrollable Sheet Demo", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              ),
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.9,    ///by this open max to 90% of screen, default value = 1
              builder: (context, scrollController)=> Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,),
                  child: ListView.builder(
                    itemCount: 30,
                    controller: scrollController,     ///use for scrolling the widget
                    itemBuilder: (context, index)=> Obx(
                      ()=> ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.tealAccent,
                          child: Text(index.toString(), style: const TextStyle(color: Colors.white,),),
                        ),
                        title: Text("Index position is $index", style: TextStyle(color: controller.selected[index] ? Colors.white : Colors.black),),
                        selected: controller.selected[index],
                        selectedTileColor: controller.selected[index] ? Colors.blue : null,
                        onTap: ()=> controller.selected[index] = !controller.selected[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
