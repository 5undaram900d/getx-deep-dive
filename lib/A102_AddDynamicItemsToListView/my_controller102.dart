
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A102_AddDynamicItemsToListView/employee_model102.dart';

class MyController102 extends GetxController{
  Rx<List<EmployeeModel102>> employees = Rx<List<EmployeeModel102>>([]);

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController addressTextEditingController = TextEditingController();

  late EmployeeModel102 employeeModel;
  // var itemCount = 0.obs;

  @override
  void onClose() {
    super.onClose();
    nameTextEditingController.dispose();
    addressTextEditingController.dispose();
  }

  addEmployee(String name, String address){
    employeeModel = EmployeeModel102(name: name, address: address);
    employees.value.add(employeeModel);
    // itemCount.value = employees.value.length;
    nameTextEditingController.clear();
    addressTextEditingController.clear();
  }

  removeEmployee(int index){
    employees.value.removeAt(index);
    // itemCount.value = employees.value.length;
  }

}