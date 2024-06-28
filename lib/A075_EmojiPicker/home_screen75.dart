
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A075_EmojiPicker/my_controller75.dart';

class HomeScreen75 extends StatelessWidget {
  MyController75 controller = Get.put(MyController75());

  HomeScreen75({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Emoji Picker'), centerTitle: true,),
        body: WillPopScope(
          child: Column(
            children: [
              Expanded(child: Container(),),
              SizedBox(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        controller.isEmojiVisible.value = !controller.isEmojiVisible.value;
                        controller.focusNode.unfocus();
                        controller.focusNode.canRequestFocus = true;
                      },
                      icon: const Icon(Icons.emoji_emotions, color: Colors.blue,),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                        child: TextField(
                          focusNode: controller.focusNode,
                          controller: controller.textEditingController,
                          decoration: InputDecoration(
                            hintText: 'Type a Message',
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                ()=> Offstage(
                  offstage: controller.isEmojiVisible.value,
                  child: SizedBox(
                    height: 250,
                    child: EmojiPicker(
                      onEmojiSelected: (category, emoji) {
                        controller.textEditingController.text = controller.textEditingController.text + emoji.emoji;
                      },
                      onBackspacePressed: () {},
                      config: const Config(
                        columns: 7,
                        verticalSpacing: 0,
                        horizontalSpacing: 0,
                        gridPadding: EdgeInsets.zero,
                        initCategory: Category.SMILEYS,
                        bgColor: Color(0xFFF2F2F2),
                        indicatorColor: Colors.blue,
                        iconColor: Colors.grey,
                        iconColorSelected: Colors.blue,
                        backspaceColor: Colors.blue,
                        skinToneDialogBgColor: Colors.white,
                        skinToneIndicatorColor: Colors.grey,
                        enableSkinTones: true,
                        recentTabBehavior: RecentTabBehavior.RECENT,
                        recentsLimit: 28,
                        noRecents: Text(
                          'No Recent',
                          style: TextStyle(fontSize: 20, color: Colors.black26),
                          textAlign: TextAlign.center,
                        ), // Needs to be const Widget
                        loadingIndicator: SizedBox.shrink(), // Needs to be const Widget
                        tabIndicatorAnimDuration: kTabScrollDuration,
                        categoryIcons: CategoryIcons(),
                        buttonMode: ButtonMode.MATERIAL,
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
          onWillPop: (){
            if(controller.isEmojiVisible.value){
              controller.isEmojiVisible.value = false;
            }
            else {
              Navigator.pop(context);
            }
            return Future.value(false);
          },
        ),
      ),
    );
  }
}


