
import 'package:get/get.dart';

class MyController49 extends GetxController {

  List<String> myFav = ["King", "Don", "Ram", "Shyam", "Hari", "Gopal", "Narayan", "Raj",].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void reorder(oldIndex, newIndex) {
    if(newIndex > oldIndex){
      newIndex = -1;
    }
    final items = myFav.removeAt(oldIndex);
    myFav.insert(newIndex, items);
  }
}