
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A088_MultiSelectDialog/guys88.dart';
import 'package:getx_tut/A088_MultiSelectDialog/my_controller88.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Home1Screen88 extends StatelessWidget {
  MyController88 controller = Get.put(MyController88());

  Home1Screen88({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Multi Select Dialog'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MultiSelectDialogField(
                listType: MultiSelectListType.LIST,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  border: Border.all(color: Colors.teal, width: 2,),
                ),
                buttonIcon: Icon(Icons.account_box_rounded, color: Colors.red,),
                buttonText: Text("Select favorite", style: TextStyle(color: Colors.blue, fontSize: 16,),),
                items: controller.guys.map(
                  (guy) => MultiSelectItem<Guys88>(guy, guy.name!),
                ).toList(),
                title: Text('Guys'),
                selectedColor: Colors.purpleAccent,
                searchable: true,
                onConfirm: (results){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
