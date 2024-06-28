
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A050_AnimatedBottomNavigationBar/my_controller50.dart';

class HomeScreen50 extends StatelessWidget {
  MyController50 controller = MyController50();

  HomeScreen50({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Bottom Navigation Bar'),),
      body: SizedBox.expand(
        child: PageView(
          physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics(),),
          controller: controller.pageController,
          children: const [
            Center(child: Text('Home', style: TextStyle(fontSize: 30),),),
            Center(child: Text('Favourite', style: TextStyle(fontSize: 30),),),
            Center(child: Text('Cart', style: TextStyle(fontSize: 30),),),
            Center(child: Text('Profile', style: TextStyle(fontSize: 30),),),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        ()=> FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.favorite, title: "Favourite"),
            TabData(iconData: Icons.shopping_cart, title: "Cart"),
            TabData(iconData: Icons.person, title: "Profile"),
          ],
          onTabChangedListener: ((position) {
            controller.currentIndex.value = position;
            controller.pageController.jumpToPage(position);
          }),
          initialSelection: controller.currentIndex.value,
          key: controller.bottomNavigationKey,
        ),
      ),
    );
  }
}
