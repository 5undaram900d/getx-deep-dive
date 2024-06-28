
import 'package:get/get.dart';

class MyController84 extends GetxController {
  final List<Map<String, dynamic>> allGuys = [
    {"name": "Rohit", "country": "India"},
    {"name": "Virat", "country": "Bharat"},
    {"name": "King", "country": "Hindustan"},
    {"name": "Don", "country": "USA"},
    {"name": "Danger", "country": "Kanpur"},
    {"name": "Shivam", "country": "Patna"},
    {"name": "Gaurav", "country": "England"},
    {"name": "Suraj", "country": "Nepal"},
    {"name": "Shubhman", "country": "Bhutan"},
    {"name": "Aadi", "country": "Russia"},
  ];

  Rx<List<Map<String, dynamic>>> foundGuys = Rx<List<Map<String, dynamic>>>([]);

  @override
  void onInit() {
    super.onInit();
    foundGuys.value = allGuys;
  }

  void filterGuy(String guyName) {
    List<Map<String, dynamic>> results = [];
    if(guyName.isEmpty){
      results = allGuys;
    }
    else{
      results = allGuys.where((element) => element["name"].toString().toLowerCase().contains(guyName.toLowerCase())).toList();
    }
    foundGuys.value = results;
  }

}