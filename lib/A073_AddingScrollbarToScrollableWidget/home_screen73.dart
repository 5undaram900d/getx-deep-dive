
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen73 extends StatelessWidget {
  const HomeScreen73({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Scrollbar to Scrollable Widget'), centerTitle: true,),
        body: RawScrollbar(
          // thumbVisibility: true,
          thumbColor: Colors.green,
          trackVisibility: true,
          // trackColor: Colors.red,
          thickness: 10,
          child: ListView.builder(
            itemCount: 25,
            itemBuilder: (context, index){
              return Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.all(16.0),
                color: Colors.deepPurpleAccent,
                child: Text("$index", style: const TextStyle(color: Colors.white),),
              );
            },
          ),
        ),
      ),
    );
  }
}
