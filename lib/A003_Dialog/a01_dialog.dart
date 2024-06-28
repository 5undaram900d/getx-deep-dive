
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiaLog extends StatelessWidget {
  const DiaLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialog',
      home: Scaffold(
        appBar: AppBar(title: const Text('Dialog'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.defaultDialog();    /// it is showing a default dialog
                },
                child: const Text('Show Default Dialog'),
              ),
              ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title: 'Custom tittle',
                    titleStyle: const TextStyle(fontSize: 20),
                    middleText: "This is middle text",
                    middleTextStyle: const TextStyle(fontSize: 16),
                    backgroundColor: Colors.purpleAccent,
                    radius: 15,
                  );
                },
                child: const Text('Show Dialog'),
              ),
              ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title: 'Custom tittle',
                    titleStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.purpleAccent,
                    radius: 15,
                    /// for Customize the middle text
                    content: const Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 16,),
                        Expanded(child: Text('Data Loading'),),
                      ],
                    ),
                  );
                },
                child: const Text('Show Dialog with Custom middle'),
              ),
              ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title: 'Custom tittle',
                    titleStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.purpleAccent,
                    radius: 15,
                    /// for Customize the middle text
                    content: const Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 16,),
                        Expanded(child: Text('Data Loading'),),
                      ],
                    ),
                    ///Default Cancel & Confirm
                    textCancel: 'Cancel',
                    cancelTextColor: Colors.white,
                    textConfirm: 'Confirm',
                    confirmTextColor: Colors.white,
                    onCancel: (){},
                    onConfirm: (){},
                    buttonColor: Colors.green,
                    /// Override the default cancel & confirm property
                    cancel: const Text('Override Cancel', style: TextStyle(color: Colors.white),),
                    confirm: const Text('Override Confirm', style: TextStyle(color: Colors.white),),
                    /// other actions property
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('Closed');
                          Get.back();
                        },
                        child: const Text('Action-1'),
                      ),
                      ElevatedButton(onPressed: () { }, child: const Text('Action-2'),),
                    ],
                    // barrierDismissible: false,  /// on outside of dialog not close dialog
                  );
                },
                child: const Text('Show Dialog with Cancel & Confirm'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// 5:30