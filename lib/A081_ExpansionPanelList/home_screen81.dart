
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A081_ExpansionPanelList/employee81.dart';
import 'package:getx_tut/A081_ExpansionPanelList/my_controller81.dart';

class HomeScreen81 extends StatelessWidget {
  ///* Due to it late initializer error remove*/
  MyController81 controller = Get.put(MyController81());

  HomeScreen81({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Panel List'), centerTitle: true,),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Obx(
            ()=> ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded){
                ///* here logic not correct also  */
                controller.employee[panelIndex].isExpanded!.value = !isExpanded;
              },
              children: controller.employee.map<ExpansionPanel>(
                (Employee81 item) => ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: ((context, isExpanded){
                    return ListTile(title: Text(item.header!),);
                  }),
                  body: ListTile(title: Text(item.body!),),
                  isExpanded: item.isExpanded!.value,
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}





//lateInitializationError solved but some logic problem occurs