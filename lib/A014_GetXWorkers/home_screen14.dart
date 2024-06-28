
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A014_GetXWorkers/my1_controller14.dart';
import 'package:getx_tut/A014_GetXWorkers/my2_controller14.dart';
import 'package:getx_tut/A014_GetXWorkers/my3_controller14.dart';
import 'package:getx_tut/A014_GetXWorkers/my4_controller14.dart';
import 'package:getx_tut/A014_GetXWorkers/my5_controller14.dart';

class HomeScreen14 extends StatelessWidget {
  My1Controller14 my1Controller14 = My1Controller14();
  My2Controller14 my2Controller14 = My2Controller14();
  My3Controller14 my3Controller14 = My3Controller14();
  My4Controller14 my4Controller14 = My4Controller14();
  My5Controller14 my5Controller14 = My5Controller14();

  HomeScreen14({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("GetX Workers"),),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => my1Controller14.increment(), child: const Text("Increment by ever"),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(onChanged: (val) => my1Controller14.increment(),),
                ),
                ElevatedButton(onPressed: () => my2Controller14.increment(), child: const Text("Increment by everAll"),),
                const SizedBox(height: 15,),
                ElevatedButton(onPressed: () => my3Controller14.increment(), child: const Text("Increment by once"),),
                const SizedBox(height: 15,),
                ElevatedButton(onPressed: () => my4Controller14.increment(), child: const Text("Increment after 1 sec when stop typing"),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(onChanged: (val) => my4Controller14.increment(),),
                ),
                ElevatedButton(onPressed: () => my5Controller14.increment(), child: const Text("Increment by interval"),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
