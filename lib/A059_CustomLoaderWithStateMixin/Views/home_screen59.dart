
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Controller/my_controller59.dart';
import 'package:skeletons/skeletons.dart';

class HomeScreen59 extends StatelessWidget {
  MyController59 controller = MyController59();

  HomeScreen59({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Loader with StateMixin'), centerTitle: true,),
        body: controller.obx((state) => ListView.separated(
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  width: 100,
                  height: 100,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: state[index].imageThumbnailPath,
                    placeholder: (context, url)=> const Center(child: SkeletonAvatar(),),
                    errorWidget: (context, url, error)=> const Icon(Icons.error, color: Colors.red,),
                  ),
                ),
                title: Text(state[index].name, style: const TextStyle(fontSize: 16),),
                subtitle: Text(state[index].country.toString(), style: const TextStyle(fontSize: 14),),
              );
            },
            separatorBuilder: (context, index)=> const Divider(color: Colors.grey,),
            itemCount: state!.length,
            physics: const BouncingScrollPhysics(),
          ),
          onLoading: SkeletonListView(),
          onError: (error)=> Center(child: Text(error.toString(),),),
        ),
      ),
    );
  }
}
