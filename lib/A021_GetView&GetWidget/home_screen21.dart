
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A021_GetView&GetWidget/count_controller21.dart';


/******
  GetView:
    If we have a single controller as a dependency then we use GetView
    instead of StatelessWidget and avoid writing Get.find

  GetWidget:
    It is similar to GetView with one difference if gives the same instance of Get.find
    everytime. It becomes very useful when used in combination with Get.create
 ******////


/// GetView--------- not give same instance at every time
// class HomeScreen21 extends GetView<CountController21> {     ///for GetView
//   const HomeScreen21({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(CountController21());           ///for GetView
//     return GetMaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('GetView'),),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ///In case of GetView controller automated created, because it use only for single controller
//               Obx(()=> Text('The value is ${controller.count}',style: const TextStyle(fontSize: 25),),),
//               const SizedBox(height: 8,),
//               ElevatedButton(
//                 onPressed: (){
//                   debugPrint(controller.hashCode.toString());
//                   controller.increment();
//                 },
//                 child: const Text('Increment'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




/// GetWidget---------- gives same instance at every time
class HomeScreen21 extends GetWidget<CountController21> {   ///for GetWidget
  const HomeScreen21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.create(() => CountController21());  ///for GetWidget
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GetView'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///In case of GetView controller automated created, because it use only for single controller
              Obx(()=> Text('The value is ${controller.count}',style: const TextStyle(fontSize: 25),),),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: (){
                  debugPrint(controller.hashCode.toString());
                  controller.increment();
                },
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
