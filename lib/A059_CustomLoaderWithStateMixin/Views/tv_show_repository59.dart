
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Model/tv_show_model59.dart';
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Provider/api_provider59.dart';

class TvShowRepository {
  final ApiProvider59 apiProvider;
  TvShowRepository(this.apiProvider);

  ///get tv show
  Future<TvShowModel59> getTvShow(String page)=> apiProvider.getTvShow(page);

}