
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/Modules23/Controllers23/home_controller23.dart';

class HomeView23 extends GetView<HomeController23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List'), centerTitle: true,),
      body: controller.obx(
         (data) => ListView.builder(
           padding: EdgeInsets.all(8),
           itemCount: data?.length,
           itemBuilder: (BuildContext context, int index) {
             return Card(
               child: Column(
                 children: [
                   ListTile(
                     leading: CircleAvatar(
                       radius: 30,
                       backgroundImage: NetworkImage(data![index]['picture']['large']),
                     ),
                     title: Text(data[index]['name']['title']+' '+data[index]['name']['first']+' '+data[index]['name']['last']),
                     subtitle: Text(data[index]['email'], style: const TextStyle(fontSize: 12),),
                     trailing: Text("Age : ${data[index]['dob']['age']}"),
                   ),
                 ],
               ),
             );
           },
         ),
        onError: (error) => Center(child: Text(error.toString()),)
      ),
    );
  }
}