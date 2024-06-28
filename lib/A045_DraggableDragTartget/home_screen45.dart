
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A045_DraggableDragTartget/my_controller45.dart';

class HomeScreen45 extends StatelessWidget {
  MyController45 controller = MyController45();

  HomeScreen45({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Draggable Drag target"), centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                 ()=> Stack(
                   children: controller.numbers.isEmpty
                    ? [_buildDraggableWithNoItem()]
                    : controller.numbers.map(
                         (num)=> Draggable(
                           data: num,
                           feedback: _buildDraggable(num.toString()),
                           childWhenDragging: Container(height: 100, width: 100,),
                           child: _buildDraggable(num.toString())
                         ),
                      ).toList(),
                 ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDragTarget(text: 'Even', color: Colors.lightBlueAccent, acceptType: 1,),
                  _buildDragTarget(text: 'Odd', color: Colors.deepPurple, acceptType: 0,),
                ],
              ),
              ElevatedButton(onPressed: ()=> controller.restartGame(), child: const Text('Restart'),),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDraggableWithNoItem()=> Container(
    height: 100,
    width: 100,
    color: Colors.black,
    alignment: Alignment.center,
    child: const Text("No Item", style: TextStyle(fontSize: 18, color: Colors.white),),
  );

  Widget _buildDraggable(String text)=> Container(
    height: 100,
    width: 100,
    color: Colors.red,
    alignment: Alignment.center,
    child: Text(text, style: const TextStyle(fontSize: 18, color: Colors.white),),
  );

  Widget _buildDragTarget({required String text, required Color color, required int acceptType})=> DragTarget<int>(
    builder: (context, acceptData, rejectData)=> Container(
      height: 100,
      width: 100,
      color: color,
      alignment: Alignment.center,
      child: Text(text, style: const TextStyle(fontSize: 18, color: Colors.white),),
    ),
    onWillAccept: (data)=> true,
    onAccept: (data)=> controller.checkCorrectAnswer(data, acceptType),
  );
}
