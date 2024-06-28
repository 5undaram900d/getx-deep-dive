
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A040_CarouselSlider/failure_view40.dart';
import 'package:getx_tut/A040_CarouselSlider/home_controller40.dart';

class HomeScreen40 extends StatelessWidget {
  
  HomeController40 controller = Get.put(HomeController40());
  
  HomeScreen40({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Screen'), centerTitle: true,),
        body: Obx(
          ()=> controller.isDataProcessing.value
             ? Center(
                 child: Container(
                   padding: const EdgeInsets.all(8),
                   child: const CircularProgressIndicator(),
                 ),
               )
             : controller.isDataError.value
                ? FailureView40(onPressed: ()=> controller.getPopular())
                : CarouselSlider(
                    items: generateSlider(),
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                  ),
        ),
      ),
    );
  }


  List<Widget> generateSlider() {
    List<Widget> imageSliders = controller.lstPopular.map((item){
      return Container(
        margin: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10),),
          child: CachedNetworkImage(
            imageUrl: item['image_thumbnail_path'].toString(),
            fit: BoxFit.cover,
            width: Get.width,
            placeholder: ((context, url) => Container(color: Colors.grey,)),
            errorWidget: ((context, url, error) => const Icon(Icons.error, color: Colors.red,)),
          ),
        ),
      );
    }).toList();
    return imageSliders;
  }

}
