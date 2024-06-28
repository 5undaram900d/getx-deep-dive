
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/*****
  We initialize a storage driver inside the main() function
 *****////

class HomeScreen20 extends StatelessWidget {

  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  HomeScreen20({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("GetStorage & Email Validation"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: (){
                    if(GetUtils.isEmail(emailEditingController.text)){
                      storage.write("email", emailEditingController.text);
                      Get.snackbar(
                        "Acknowledgement",
                        "Email has saved successfully",
                        colorText: Colors.green,
                        backgroundColor: Colors.green.withOpacity(0.2),
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                    else{
                      Get.snackbar(
                        "Incorrect Email",
                        "Provide email in valid format",
                        colorText: Colors.red,
                        backgroundColor: Colors.red.withOpacity(0.2),
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  child: const Text('Write'),
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: (){
                    Get.snackbar(
                      "Email",
                      "The Email is ${storage.read("email")}",
                      colorText: Colors.green,
                      backgroundColor: Colors.green.withOpacity(0.2),
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  child: const Text('Read'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
