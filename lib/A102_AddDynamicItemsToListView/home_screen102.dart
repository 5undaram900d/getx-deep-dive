
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A102_AddDynamicItemsToListView/my_controller102.dart';

class HomeScreen102 extends StatelessWidget {
  MyController102 controller = Get.put(MyController102());

  HomeScreen102({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Save Notes'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                controller: controller.nameTextEditingController,
                decoration: const InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8),),),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 8,),
              TextField(
                controller: controller.addressTextEditingController,
                decoration: const InputDecoration(
                  hintText: "Address",
                  labelText: "Address",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8),),),
                  isDense: true,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent, foregroundColor: Colors.red,),
                onPressed: controller.addEmployee(controller.nameTextEditingController.text, controller.addressTextEditingController.text),
                child: const Text('Add Friend'),
              ),
              Expanded(
                child: Obx(
                  () {
                    int length = controller.employees.value.length;
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      // itemCount: controller.itemCount.value,     /** this line shows error **/
                      itemCount: length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(controller.employees.value[index].name!),
                          subtitle: Text(controller.employees.value[index].address!),
                          trailing: GestureDetector(
                            onTap: controller.removeEmployee(index),
                            child: const Icon(Icons.delete, color: Colors.red,),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





/// Resolve the Obx related error 1st then move to next video, not updated on adding




