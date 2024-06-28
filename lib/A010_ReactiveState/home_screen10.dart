
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A010_ReactiveState/my_controller10.dart';

class HomeScreen10 extends StatelessWidget {

  My1Controller10 myController101 = Get.put(My1Controller10());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Reactive State'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /** If instance of the controller is define above then there is no need of any init **/
              GetX<My1Controller10>(
                // init: MyController101(),
                builder: (controller101) {
                  return Text("The value is ${myController101.count1}", style: const TextStyle(fontWeight: FontWeight.bold),);
                },
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () => myController101.increment(), child: const Text('Increment with above instance'),),

              const SizedBox(height: 15,),

              /** If instance of the controller not created at the top **/
              GetX<My2Controller10>(
                init: My2Controller10(),
                builder: (controller102) {
                  return Text("The value is ${controller102.count2}", style: const TextStyle(fontWeight: FontWeight.bold),);
                },
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () => Get.find<My2Controller10>().increment(), child: const Text('Increment without above instance'),),
            ],
          ),
        ),
      ),
    );
  }
}
