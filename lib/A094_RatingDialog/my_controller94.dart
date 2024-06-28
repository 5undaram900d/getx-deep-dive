
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rating_dialog/rating_dialog.dart';

class MyController94 extends GetxController{
  var rating = 0.0.obs;
  var comment = ''.obs;

  showRatingDialog() {
    Get.dialog(
      RatingDialog(
        starColor: Colors.purpleAccent,
        message: const Text("Tab a star to set your rating. Add more description here if you want."),
        image: Image.asset("assets/images/logo.png", height: 100,),
        title: const Text('Rating Dialog'),
        submitButtonText: "submit",
        onSubmitted: (response){
          rating.value = response.rating;
          comment.value = response.comment;
        },
        onCancelled: ()=> printInfo(info: "Cancel"),
      ),
    );
  }
}