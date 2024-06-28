
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';

class ImageUploadProvider34 extends GetConnect{

  ///Upload Image
  Future<String> uploadImage(XFile file) async{
    try{
      final form = FormData({
        'file': MultipartFile(file, filename: 'aa.jpg'),
      });
      ///use url of database where you wanna upload image
      final response = await post("url", form);
      if(response.status.hasError){
        return Future.error(response.body);
      }
      else{
        return response.body['result'];
      }
    }
    catch(exception){
      return Future.error(exception.toString());
    }
  }

}