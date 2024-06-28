
import 'package:get/get.dart';
import 'package:getx_tut/A040_CarouselSlider/popular_provider40.dart';

class HomeController40 extends GetxController{
  var lstPopular = List<dynamic>.empty(growable: true).obs;
  var isDataProcessing = false.obs;
  var isDataError = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getPopular();
  }

  void getPopular() {
    try{
      isDataProcessing(true);
      PopularProvider40().getPopular().then((resp){
          lstPopular.clear();
          isDataProcessing(false);
          lstPopular.addAll(resp);
          isDataError(false);
        },
        onError: (err){
          isDataProcessing(false);
          isDataError(true);
        }
      );
    }
    catch(exception){
      isDataProcessing(false);
      isDataError(true);
    }
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

}