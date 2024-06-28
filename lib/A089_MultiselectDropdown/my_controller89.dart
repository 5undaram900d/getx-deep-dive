
import 'package:get/get.dart';

class MyController89 extends GetxController{
  List<String> options = ["GetX", "Provide", "Bloc", "MobX"];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedOption = ''.obs;

}