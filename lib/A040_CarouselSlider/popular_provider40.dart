
import 'package:get/get.dart';

class PopularProvider40 extends GetConnect {
  Future<List<dynamic>> getPopular() async{
    try{
      final response = await get("https://www.episodate.com/api/most-popular?page=1");
      if(response.status.hasError){
        print("Error");
        return Future.error(response.statusText.toString());
      }
      else{
        print("result");
        return response.body['tv_shows'];
      }
    }
    catch(exception){
      print("Exception");
      return Future.error(exception.toString());
    }
  }
}