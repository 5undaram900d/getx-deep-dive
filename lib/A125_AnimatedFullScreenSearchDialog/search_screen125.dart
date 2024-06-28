
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen125 extends StatelessWidget {
  const SearchScreen125({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10,),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        suffixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.close),),
                ],
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('Recent Search', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
              ),
              const ListTile(
                title: Text('GetX Playlist'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
              const ListTile(
                title: Text('Flutter Playlist'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
              const ListTile(
                title: Text('Flutter Animation Playlist'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
              const ListTile(
                title: Text('Flutter Firebase Playlist'),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
