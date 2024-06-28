
import 'package:get/get.dart';

import 'employee106.dart';

class MyController106 extends GetxController{
  List<Employee106> list = [];

  @override
  void onInit() {
    List.generate(20, (index) => list.add(Employee106(name: "Name $index", isSelected: false.obs)));
    super.onInit();
  }

}