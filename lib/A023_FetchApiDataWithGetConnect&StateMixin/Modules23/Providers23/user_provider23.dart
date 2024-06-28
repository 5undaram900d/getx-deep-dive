
import 'package:get/get.dart';

class UserProvider23 extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?results=50");
    if(response.status.hasError) {
      return Future.error(response.statusText.toString());
    }
    else {
      return response.body['results'];
    }
  }
}