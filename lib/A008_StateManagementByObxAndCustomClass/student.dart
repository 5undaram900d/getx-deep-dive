
import 'package:get/get.dart';

  /** Classes can be made observable by making individuals variables Rx or by making the entire class observable. **/

class Student1{
  /// Individual variables Rx
  var name = "Sundaram".obs;
  var age = 21.obs;
}

class Student2{
  /// To make the entire class observable
  var name;
  var age;
  Student2({this.name, this.age});
}