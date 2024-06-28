
import 'package:flutter/material.dart';

class FailureView40 extends StatelessWidget {
  final String title, message;
  final Function onPressed;

  const FailureView40({super.key, this.title="Error", this.message="Something went wrong", required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, color: Colors.red, size: 150,),
            const SizedBox(height: 2,),
            Text(title, style: Theme.of(context).textTheme.bodyText1,),
            const SizedBox(height: 2,),
            Text(message, style: Theme.of(context).textTheme.bodyText1,),
            const SizedBox(height: 2,),
            ElevatedButton(onPressed: onPressed(), child: const Text('Retry'),),
          ],
        ),
      ),
    );
  }
}
