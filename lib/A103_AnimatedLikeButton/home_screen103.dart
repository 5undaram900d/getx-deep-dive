
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A103_AnimatedLikeButton/my_controller103.dart';
import 'package:like_button/like_button.dart';

class HomeScreen103 extends StatelessWidget {
  MyController103 controller = Get.put(MyController103());

  HomeScreen103({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Like Button'), centerTitle: true,),
        body: Center(
          child: LikeButton(
            size: 80,
            likeCount: controller.getStorage.read("likeCount") ?? 0,
            countPostion: CountPostion.bottom,
            likeBuilder: (isLiked){             /// for custom Icon
              return Icon(Icons.monetization_on, color: isLiked ? Colors.red : Colors.grey, size: 80,);
            },
            countBuilder: (likeCount, isLiked, text){         /// for custom text
              return Text(likeCount==0 ? "" : text, style: TextStyle(color: isLiked ? Colors.red : Colors.grey, fontSize: 20,),);
            },
            onTap: (isLiked){
              return controller.saveLikeCount(isLiked);
            },
            isLiked: controller.getStorage.read("isLiked") ?? false,
          ),
        ),
      ),
    );
  }
}
