
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A072_NavigationDrawer/Routes/routes72.dart';

class NavigationDrawer72 extends StatelessWidget {
  const NavigationDrawer72({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(),
          const Divider(color: Colors.grey,),
          buildDrawerItem(
            text: 'Photo',
            icon: Icons.photo,
            tileColor: Get.currentRoute==Routes72.PHOTO ? Colors.blue : null,
            textIconColor: Get.currentRoute==Routes72.PHOTO ? Colors.white : Colors.black,
            onTap: ()=> navigate(0),
          ),
          buildDrawerItem(
            text: 'Video',
            icon: Icons.videocam,
            tileColor: Get.currentRoute==Routes72.VIDEO ? Colors.blue : null,
            textIconColor: Get.currentRoute==Routes72.VIDEO ? Colors.white : Colors.black,
            onTap: ()=> navigate(1),
          ),
          buildDrawerItem(
            text: 'Chat',
            icon: Icons.chat,
            tileColor: Get.currentRoute==Routes72.CHAT ? Colors.blue : null,
            textIconColor: Get.currentRoute==Routes72.CHAT ? Colors.white : Colors.black,
            onTap: ()=> navigate(2),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text('Sundaram Sharma'),
      accountEmail: Text('sundaram1105001@gmail.com'),
      currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/logo.png'),),
      currentAccountPictureSize: Size.square(60),
      otherAccountsPictures: [
        CircleAvatar(backgroundColor: Colors.red, child: Text('SS'),),
      ],
      otherAccountsPicturesSize: Size.square(30),
    );
  }

  Widget buildDrawerItem({required String text, required IconData icon, required Color textIconColor, Color? tileColor, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: textIconColor,),
      title: Text(text, style: TextStyle(color: textIconColor),),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index){
    if(index==0){
      Get.toNamed(Routes72.PHOTO);
    }
    else if(index==1){
      Get.toNamed(Routes72.VIDEO);
    }
    else if(index==2){
      Get.toNamed(Routes72.CHAT);
    }
  }

}
