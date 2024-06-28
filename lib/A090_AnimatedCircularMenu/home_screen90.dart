
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A090_AnimatedCircularMenu/my_controller90.dart';

class HomeScreen90 extends StatelessWidget {
  MyController90 controller = Get.put(MyController90());

  HomeScreen90({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Circular Menu'), centerTitle: true,),
        body: Center(
          child: ElevatedButton(
            onPressed: (){},
            child: const Text('Perform Action'),
          ),
        ),
        floatingActionButton: Builder(
          builder: (context)=> FabCircularMenuPlus(
            alignment: Alignment.bottomRight,
            ringColor: Colors.blue.withOpacity(0.4),
            ringDiameter: 450,
            ringWidth: 100,
            fabSize: 64,
            fabElevation: 8,
            fabIconBorder: const CircleBorder(),
            fabColor: Colors.blueAccent,
            fabOpenIcon: const Icon(Icons.menu, color: Colors.white,),
            fabCloseIcon: const Icon(Icons.close, color: Colors.white,),
            fabMargin: const EdgeInsets.all(16),
            animationDuration: const Duration(milliseconds: 800),
            animationCurve: Curves.easeInOutCirc,
            onDisplayChange: (isOpen){
              print(isOpen);
            },
            children: <Widget>[
              RawMaterialButton(
                onPressed: ()=> controller.fabKey.currentState!.close(),
                shape: const CircleBorder(side: BorderSide(width: 1, color: Colors.blue,)),
                padding: const EdgeInsets.all(16),
                child: const Icon(Icons.home, color: Colors.blue,),
              ),
              RawMaterialButton(
                onPressed: ()=> controller.fabKey.currentState?.close(),
                shape: const CircleBorder(side: BorderSide(width: 1, color: Colors.blue,)),
                padding: const EdgeInsets.all(16),
                child: const Icon(Icons.email, color: Colors.blue,),
              ),
              RawMaterialButton(
                onPressed: (){

                },
                shape: const CircleBorder(side: BorderSide(width: 1, color: Colors.blue,)),
                padding: const EdgeInsets.all(16),
                child: const Icon(Icons.settings, color: Colors.blue,),
              ),
              RawMaterialButton(
                onPressed: (){

                },
                shape: const CircleBorder(side: BorderSide(width: 1, color: Colors.blue,)),
                padding: const EdgeInsets.all(16),
                child: const Icon(Icons.upcoming_sharp, color: Colors.blue,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}








///working perfectly but by close on click the icon show error null check operator
