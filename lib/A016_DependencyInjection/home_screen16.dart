
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A016_DependencyInjection/my1_controller16.dart';

class HomeScreen16 extends StatelessWidget {
  const HomeScreen16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     my controller instance will be created even if it is not used
     tag will be used to find the instance with tag name
     controller disposed when it is not used but if permanent is true the instance will be alive throughout the app
     **/
    My1Controller16 my1controller16 = Get.put(My1Controller16(), tag: "instance1", permanent: true);
    /**
     Instance will be created when it is used
     It is similar to "permanent", the difference is that the instance is discarded when is not being used,
     but when it's use is needed again, Get will recreate the instance
     **/
    Get.lazyPut(() => My1Controller16());
    Get.lazyPut(() => My1Controller16(), tag: 'instance2', fenix: true);
    Get.putAsync<My1Controller16>(() async => await My1Controller16());
    /// Here permanent will be true by default and isSingleton is false
    Get.create<My1Controller16>(() => My1Controller16());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Dependency Injection'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  /// Instance will be created with tag
                  Get.find<My1Controller16>(tag: 'instance1');
                  /// find instance
                  Get.find<My1Controller16>().incrementCounter();
                },
                child: const Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
