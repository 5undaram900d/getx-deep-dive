
import 'package:get/get.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Modules23/Providers23/user_provider23.dart';

class HomeController23 extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    UserProvider23().getUser().then((value) {
        change(value, status: RxStatus.success());
      },
      onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      }
    );
  }
}