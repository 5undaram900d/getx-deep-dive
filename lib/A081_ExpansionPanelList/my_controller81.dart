
import 'package:get/get.dart';
import 'employee81.dart';

class MyController81 extends GetxController {
  late List<Employee81> employee;

  @override
  void onInit() {
    super.onInit();
    employee = generateItems(20);
  }

  List<Employee81> generateItems(int numberOfItems) {
    return List.generate(
      numberOfItems,
      (index) => Employee81(
        header: 'Employee - $index',
        body: 'Employee - $index Details',
        isExpanded: false.obs,
      ),
    );
  }
}