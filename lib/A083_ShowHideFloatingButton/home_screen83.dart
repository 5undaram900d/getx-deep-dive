
import 'package:flutter/material.dart';

class HomeScreen83 extends StatelessWidget {
  const HomeScreen83({super.key});

  @override
  Widget build(BuildContext context) {
    bool showFab = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Show/Hide FAB'), centerTitle: true,),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(),
        ),
      ),
      floatingActionButton: Visibility(
        visible: !showFab,
        child: FloatingActionButton(onPressed: (){}, mini: true, child: const Icon(Icons.add),),
      ),
    );
  }
}
