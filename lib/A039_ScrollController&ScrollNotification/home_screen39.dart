
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A039_ScrollController&ScrollNotification/my_controller39.dart';

class HomeScreen39 extends StatelessWidget {

  final MyController39 controller = Get.put(MyController39());

  HomeScreen39({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scroll Controller/Notification'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: ()=> controller.scrollUp(), icon: const Icon(Icons.arrow_circle_up),),
            IconButton(onPressed: ()=> controller.scrollDown(), icon: const Icon(Icons.arrow_circle_down),),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.deepPurple,
              padding: const EdgeInsets.all(8),
              child: Obx(()=> Text(controller.scrollMessage.value, style: const TextStyle(color: Colors.white, fontSize: 14,),),),
            ),
            const SizedBox(height: 10,),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(8),
              child: Obx(()=> Text(controller.scrollNotificationMessage.value, style: const TextStyle(color: Colors.white, fontSize: 14,),),),
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if(scrollNotification is ScrollStartNotification) {
                    controller.start();
                  }
                  else if(scrollNotification is ScrollUpdateNotification) {
                    controller.updateScroll();
                  }
                  if(scrollNotification is ScrollEndNotification) {
                    controller.end();
                  }
                  return true;
                },
                child: ListView.builder(
                  controller: controller.scrollController,
                  itemCount: 50,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text('Item index is $index'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
