
import 'package:get/get.dart';
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Model/tv_show_model59.dart';
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Views/tv_show_repository59.dart';

class MyController59 extends GetxController with StateMixin<List<TvShow>> {

  TvShowRepository? tvShowRepository;
  MyController59({this.tvShowRepository});
  List<TvShow> listTvShows = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getTvShow();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void getTvShow() async{
    try{
      change(null, status: RxStatus.loading());
      tvShowRepository!.getTvShow("1").then((value) {
        listTvShows.clear();
        listTvShows.addAll(value.tvShows);
        change(listTvShows, status: RxStatus.success());
      }, onError: (err){
        change(null, status: RxStatus.error(err.toString()));
      });
    }
    catch (exception) {
      change(null, status: RxStatus.error(exception.toString()));
    }
  }

}