
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A015_Internationalization/messages15.dart';
import 'package:getx_tut/A015_Internationalization/my1_controller15.dart';

class HomeScreen15 extends StatelessWidget {

  My1Controller15 my1controller15 = My1Controller15();

  HomeScreen15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),             ///your translations
      locale: const Locale('en', 'US'),           ///default locale //to get device locale Get.deviceLocale
      fallbackLocale: const Locale('en', 'US'),   ///fallback locale if wrong locale
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('hello'.tr, style: const TextStyle(fontSize: 20, color: Colors.deepPurple,),),
              ElevatedButton(onPressed: () => my1controller15.changeLanguage('hi', 'IN'), child: const Text('Hindi'),),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: () => my1controller15.changeLanguage('fr', 'FR'), child: const Text('French'),),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: () => my1controller15.changeLanguage('en', 'US'), child: const Text('English'),),
              const SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
