
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A089_MultiselectDropdown/my_controller89.dart';
import 'package:multiselect/multiselect.dart';

class HomeScreen89 extends StatelessWidget {
  MyController89 controller = Get.put(MyController89());

  HomeScreen89({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Multiselect Dropdown'), centerTitle: true,),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DropDownMultiSelect(
                  options: controller.options,
                  whenEmpty: 'Select State Management Library',
                  selectedValues: controller.selectedOptionList.value,
                  onChanged: (value){
                    controller.selectedOptionList.value = value;
                    controller.selectedOption.value = "";
                    controller.selectedOptionList.value.forEach((element) {
                      controller.selectedOption.value = "${controller.selectedOption.value} $element";
                    });
                  },
                ),
                const SizedBox(height: 20,),
                Obx(()=> Text(controller.selectedOption.value)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
