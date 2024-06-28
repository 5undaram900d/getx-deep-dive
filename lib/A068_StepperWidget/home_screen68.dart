
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A068_StepperWidget/my_controller68.dart';

class HomeScreen68 extends StatelessWidget {
  MyController68 controller = MyController68();

  HomeScreen68({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Stepper'), centerTitle: true,),
        body: Obx(
          ()=> Stepper(
            type: StepperType.horizontal,
            currentStep: controller.currentStep.value,
            steps: buildStep(),
            onStepContinue: () {
              if(controller.currentStep.value == buildStep().length-1) {
                Get.snackbar('Success', "Data submit successfully", snackPosition: SnackPosition.BOTTOM, colorText: Colors.green, backgroundColor: Colors.green.withOpacity(0.2),);
              }
              else {
                controller.currentStep.value++;
              }
            },
            onStepCancel: ()=> controller.currentStep.value==0 ? null : controller.currentStep.value--,
            onStepTapped: (index) {
              controller.currentStep.value = index;
            },
            ///for custom continue and cancel button
            controlsBuilder: (context, details) {
              return Row(
                children: [
                  if(controller.currentStep.value!=0)
                    Expanded(child: ElevatedButton(onPressed: details.onStepCancel,child: const Text('Previous'),),),

                  const SizedBox(width: 15,),

                  Expanded(child: ElevatedButton(onPressed: details.onStepContinue,child: Text(controller.currentStep.value!=buildStep().length-1 ? 'Next' : 'Submit'),),),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  List<Step> buildStep() {
    return [
      Step(
        title: const Text('Personal'),
        content: Container(height: 100, color: Colors.red,),
        isActive: controller.currentStep.value >= 0,
        state: controller.currentStep.value>0 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: const Text('Business'),
        content: Container(height: 100, color: Colors.green,),
        isActive: controller.currentStep.value >= 1,
        state: controller.currentStep.value>1 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: const Text('Confirm'),
        content: Container(height: 100, color: Colors.teal,),
        isActive: controller.currentStep.value >= 2,
      ),
    ];
  }

}
