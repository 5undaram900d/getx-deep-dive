
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen56 extends StatelessWidget {
  const HomeScreen56({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(title: const Text('Dismiss Keyboard'), centerTitle: true,),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const Text('''Sundaram\nSharma\nis\na\nbad\nguy.\nise\nhua\nkya?''', style: TextStyle(fontSize: 80), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
