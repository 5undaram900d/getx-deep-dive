
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
  Draggable allow us to drag a widget across screen.
    DragTarget provides destination for Draggable.
**////

class HomeScreen44 extends StatelessWidget {
  const HomeScreen44({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool condition = false;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Draggable & Drag Targets'),),
        body: Center(
          child: Column(
            children: [
              Draggable(
                feedback: Container(height: 100, width: 100, color: Colors.grey,),
                childWhenDragging: Container(height: 100, width: 100, color: Colors.green,),
                axis: Axis.vertical,    ///if we want a specific axis
                onDragStarted: (){},
                onDragCompleted: (){},
                onDragEnd: (draggableDetails){},
                onDraggableCanceled: (velocity, offset){},
                onDragUpdate: (dragUpdateDetails){},
                maxSimultaneousDrags: 3,
                data: "Demo",
                child: Container(height: 100, width: 100, color: Colors.red,),
              ),
              const SizedBox(height: 20,),
              DragTarget(
                builder: (context, acceptedData, rejectedData){
                  return condition
                      ? Container(height: 100, width: 100, color: Colors.orange,)
                      : Container(height: 100, width: 100, color: Colors.deepOrangeAccent,);
                },
                onWillAccept: (data)=> true,
                onAccept: (data)=> condition=true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
