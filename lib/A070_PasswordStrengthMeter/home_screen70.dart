
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A070_PasswordStrengthMeter/my_controller70.dart';

class HomeScreen70 extends StatelessWidget {
  MyController70 controller = MyController70();

  HomeScreen70({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Password Strength Meter'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Password'),
                obscureText: true,
                onChanged: (value)=> controller.checkPasswordStrength(value),
              ),
              const SizedBox(height: 20,),
              Obx(
                ()=> LinearProgressIndicator(
                  value: controller.passwordStrength.value,
                  backgroundColor: Colors.grey[300],
                  color: controller.passwordStrength.value<=1/4
                      ?   Colors.red
                      :   controller.passwordStrength.value==2/4
                        ?   Colors.amber
                        :   controller.passwordStrength.value==3/4
                          ?   Colors.deepPurpleAccent
                          :   Colors.green,
                ),
              ),
              const SizedBox(height: 20,),
              Obx(()=> Text(controller.displayText.value, style: const TextStyle(fontSize: 18),),),
            ],
          ),
        ),
      ),
    );
  }
}
