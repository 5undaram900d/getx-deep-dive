
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A084_SearchFilterListView/my_controller84.dart';

class HomeScreen84 extends StatelessWidget {
  MyController84 controller = MyController84();

  HomeScreen84({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search/Filter ListView'), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            TextField(
              onChanged: (value)=> controller.filterGuy(value),
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Obx(
                ()=> ListView.builder(
                  itemCount: controller.foundGuys.value.length,
                  itemBuilder: (context, index)=> ListTile(
                    title: Text(controller.foundGuys.value[index]['name'], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                    subtitle: Text(controller.foundGuys.value[index]['country'],),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
