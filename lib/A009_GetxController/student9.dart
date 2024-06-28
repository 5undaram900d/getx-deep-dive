
import 'package:get/get.dart';

class Student91{
  /// Individual variables Rx
  var name = "Sundaram".obs;
  var age = 21.obs;
}

class Student92{
  /// To make the entire class observable
  var name;
  var age;
  Student92({this.name, this.age});
}