
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A088_MultiSelectDialog/guys88.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class MyController88 extends GetxController{
  final List<Guys88> guys = [
    Guys88(name: "Rohit", country: "India"),
    Guys88(name: "Virat", country: "Bharat"),
    Guys88(name: "King", country: "Hindustan"),
    Guys88(name: "Don", country: "USA"),
    Guys88(name: "Danger", country: "Kanpur"),
    Guys88(name: "Shivam", country: "Patna"),
    Guys88(name: "Gaurav", country: "England"),
    Guys88(name: "Suraj", country: "Nepal"),
    Guys88(name: "Shubhman", country: "Bhutan"),
    Guys88(name: "Aadi", country: "Russia"),
  ];

  List<dynamic> selectedGuy = [];
  var selectedGuyValue = ''.obs;




  ///This method is only for Home2Screen88
  void showMultiSelect() async {
    await showDialog(
      context: Get.context!,
      builder: (ctx){
        return MultiSelectDialog(
          listType: MultiSelectListType.LIST,
          initialValue: selectedGuy,
          items: guys.map(
                (guy) => MultiSelectItem<Guys88>(guy, guy.name!),
          ).toList(),
          title: const Text('Guys'),
          selectedColor: Colors.purpleAccent,
          searchable: true,
          onConfirm: (results){
            selectedGuy = results;
            selectedGuyValue.value = "";
            selectedGuy.forEach((element) {
              selectedGuyValue.value = "${selectedGuyValue.value}  ${element.name}";
            });
          },
        );
      },
    );
  }

}