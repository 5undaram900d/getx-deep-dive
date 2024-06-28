
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A091_ShrinkSideMenu/my_controller91.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeScreen91 extends StatelessWidget {

  MyController91 controller = Get.put(MyController91());

  HomeScreen91({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SideMenu(
        type: SideMenuType.slideNRotate,
        menu: buildMenu(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Shrink Side Menu'),
            centerTitle: true,
            leading: IconButton(onPressed: ()=> controller.openCloseSideMenu(), icon: const Icon(Icons.menu),),
          ),
          body: const Center(
            child: Text('Side Menu', style: TextStyle(fontSize: 30,),),
          ),
        ),
      ),
    );
  }


  Widget buildMenu(){
    return SingleChildScrollView(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.home, size: 20, color: Colors.white,),
            title: const Text('Home'),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.verified_user, size: 20, color: Colors.white,),
            title: const Text('Profile'),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.monetization_on, size: 20, color: Colors.white,),
            title: const Text('Wallet'),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.shopping_cart, size: 20, color: Colors.white,),
            title: const Text('Cart'),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.star, size: 20, color: Colors.white,),
            title: const Text('Favourite'),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: (){},
            leading: const Icon(Icons.settings, size: 20, color: Colors.white,),
            title: const Text('Settings'),
            textColor: Colors.white,
            dense: true,
          ),
        ],
      ),
    );
  }

}




///Error: Null check operator used on a null value