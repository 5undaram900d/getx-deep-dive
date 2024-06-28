
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Homescreen61 extends StatelessWidget {
  const Homescreen61({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Phone no. copy & call'), centerTitle: true,),
        body: Center(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 200),
                child: ElevatedButton(
                  onPressed: ()=> launchUrl(Uri.parse('tel:1234567890'),),
                  child: const Text('Call with copy number'),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 200),
                child: ElevatedButton(
                  onPressed: ()=> FlutterPhoneDirectCaller.callNumber("1234567890"),
                  child: const Text('direct call to number'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
