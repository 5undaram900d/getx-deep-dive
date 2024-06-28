
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:scratcher/scratcher.dart';

class MyController62 extends GetxController {
  var scratchProgress = 0.0.obs;
  var isThresholdReached = false.obs;
  final scratchKey = GlobalKey<ScratcherState>();
}