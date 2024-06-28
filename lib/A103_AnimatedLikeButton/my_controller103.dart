
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyController103 extends GetxController{
  var likeCount = 0;
  final getStorage = GetStorage();

  Future<bool> saveLikeCount(bool isLiked) async{
    getStorage.write("isLiked", !isLiked);
    if(!isLiked){
      likeCount++;
    }
    else{
      likeCount>0 ? likeCount-- : 0;
    }
    getStorage.write("likeCount", likeCount);
    return !isLiked;
  }

}