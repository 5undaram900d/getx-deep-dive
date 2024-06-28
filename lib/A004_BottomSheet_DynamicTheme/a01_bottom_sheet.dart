
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSHEET extends StatelessWidget {
  const BottomSHEET({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text('Light Theme'),
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text('Dark Theme'),
                          onTap: () => Get.changeTheme(ThemeData.dark()),
                        ),
                      ],
                    ),
                    barrierColor: Colors.deepOrangeAccent.shade100,       /// used for change screen color
                    backgroundColor: Colors.deepPurpleAccent,             /// used for change background color of bottomSheet
                    // isDismissible: false,     /// by this on click outside of the bottomSheet it will not close
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.white, style: BorderStyle.solid, width: 2),
                    ),
                    // enableDrag: false,    /// by this we will disable to drag the bottomSheet
                  );
                },
                child: const Text('Bottom Sheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
