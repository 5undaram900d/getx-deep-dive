
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A043_AutoFormValidation/my_controller43.dart';

class HomeScreen43 extends StatelessWidget {
  MyController43 controller = Get.put(MyController43());

  HomeScreen43({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 16, right: 16,),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              // autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  const Icon(CupertinoIcons.mail, color: Colors.red, size: 50,),
                  const SizedBox(height: 20,),
                  const Text('Welcome to login', style: TextStyle(fontSize: 20, color: Colors.deepPurple,),),
                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value){
                      controller.email = value!;
                    },
                    validator: (value){
                      return controller.validateEmail(value!);
                    },
                  ),
                  const SizedBox(height: 16,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.password),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: controller.passwordController,
                    onSaved: (value){
                      controller.password = value!;
                    },
                    validator: (value){
                      return controller.validatePassword(value!);
                    },
                  ),
                  const SizedBox(height: 16,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: context.width),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
                        backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(14),),
                      ),
                      onPressed: (){
                        controller.checkLogin();
                      },
                      child: const Text("Login", style: TextStyle(fontSize: 14, color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
