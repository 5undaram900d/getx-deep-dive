
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar1 extends StatelessWidget {
  const Snackbar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('SnackBar'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  /// By default snackbar generated at the top position
                  Get.snackbar('SnackBar', 'It is a SnackBar');
                },
                child: const Text('Show Default SnackBar'),
              ),
              ElevatedButton(
                onPressed: (){
                  /// By default snackbar generated at the top position
                  Get.snackbar(
                    'Tittle',
                    'It is a SnackBar',
                    // colorText: Colors.yellowAccent,     /// It is uses for the default text & message not for the bellow tittleText & messageText
                    /// It is overwrite the above value of tittle and message
                    titleText: const Text('OverWrited Tittle'),
                    messageText: const Text('It is a overWrited snackbar', style: TextStyle(color: Colors.tealAccent),),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    borderRadius: 5,
                    margin: const EdgeInsets.all(10),
                    maxWidth: MediaQuery.of(context).size.width*3/4,
                    animationDuration: const Duration(milliseconds: 3000),
                    backgroundGradient: const LinearGradient(colors: [Colors.red, Colors.white, Colors.green],),
                    /// While using borderColor then take also borderWidth otherwise error will be occurs
                    borderColor: Colors.orangeAccent,
                    borderWidth: 4,
                    boxShadows: [                               /// Offset(x-dir, y-dir)
                      const BoxShadow(color: Colors.pinkAccent, offset: Offset(0, 30), spreadRadius: 10, blurRadius: 5,),
                    ],
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: const Duration(milliseconds: 8000), /// how long snackbar will be visible in the screen
                    icon: const Icon(Icons.send, color: Colors.brown,),
                    mainButton: TextButton(onPressed: (){}, child: const Text('retry'),),
                    onTap: (value){
                      debugPrint('Snackbar Clicked');
                    },
                    overlayBlur: 2,   /// when snackbar is visible then 'Show SnackBar' button will be blur
                    overlayColor: Colors.orange.withOpacity(0.5),
                    padding: const EdgeInsets.all(2),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.purpleAccent,
                    progressIndicatorValueColor: const AlwaysStoppedAnimation(Colors.white),
                    snackbarStatus: (val){
                      debugPrint(val.toString());
                    },
                    /// This is used to write inside the snackbar
                    userInputForm: const Form(
                      child: Row(
                        children: [
                          Expanded(child: TextField(),),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text('Show SnackBar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
