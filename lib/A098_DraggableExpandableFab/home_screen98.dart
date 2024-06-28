
import 'package:draggable_expandable_fab/draggable_expandable_fab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen98 extends StatelessWidget {
  const HomeScreen98({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Draggable Expandable Fab"), centerTitle: true,),
        floatingActionButton: ExpandableDraggableFab(
          onTab: (){},
          childrenTransition: ChildrenTransition.fadeTransation,
          initialOpen: false,
          childrenBoxDecoration: const BoxDecoration(color: Colors.transparent),
          enableChildrenAnimation: true,
          curveAnimation: Curves.linear,
          reverseAnimation: Curves.linear,
          childrenType: ChildrenType.rowChildren,
          childrenAlignment: Alignment.topRight,
          initialDraggableOffset: Offset(Get.width-90, Get.height-100),
          distance: 100,
          childrenCount: 3,
          children: [
            FloatingActionButton(onPressed: (){}, backgroundColor: Colors.purpleAccent, child: const Icon(Icons.audiotrack,),),
            FloatingActionButton(onPressed: (){}, backgroundColor: Colors.purple, child: const Icon(Icons.video_call,),),
            FloatingActionButton(onPressed: (){}, backgroundColor: Colors.deepPurpleAccent, child: const Icon(Icons.camera,),),
          ],
        ),
        body: const Center(
          child: Text('Expandable Draggable Fab'),
        ),
      ),
    );
  }
}



//Error: Null check operator used on a null value, may be due to outdated version
