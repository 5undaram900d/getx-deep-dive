
import 'package:get/get.dart';
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Model/tv_show_model59.dart';
import 'package:http/http.dart';

class ApiProvider59 extends GetConnect {
  String appBaseUrl = "https://www.episodate.com/api/most-popular";

  // ApiProvider59() {
  //   httpClient.baseUrl = appBaseUrl;
  //   httpClient.defaultContentType = 'application/json';
  // }

  Future<TvShowModel59> getTvShow(String page) async{
    try {
      final response = await get(Uri.parse("$appBaseUrl?page=$page"));
      if(response.statusCode!=200){
        return Future.error(response.statusCode);
      }
      else{
        return tvShowModel59FromJson(response.body);
      }
    }
    catch (exception) {
      return Future.error(exception.toString());
    }
  }

}