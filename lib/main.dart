
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_tut/A005_RouteNavigation/a01_home_screen.dart';
import 'package:getx_tut/A006_RouteNavigationForNamedRoutes/a01_initial_home.dart';
import 'package:getx_tut/A007_StateManagementByObx/a01_home_screen7.dart';
import 'package:getx_tut/A008_StateManagementByObxAndCustomClass/home_screen8.dart';
import 'package:getx_tut/A009_GetxController/home_screen9.dart';
import 'package:getx_tut/A010_ReactiveState/home_screen10.dart';
import 'package:getx_tut/A011_SimpleStateManager/home_screen11.dart';
import 'package:getx_tut/A012_ControllerLifeCycle/home_screen12.dart';
import 'package:getx_tut/A013_GetXUniqueID/home_screen13.dart';
import 'package:getx_tut/A014_GetXWorkers/home_screen14.dart';
import 'package:getx_tut/A015_Internationalization/home_screen15.dart';
import 'package:getx_tut/A018_Binding/home_screen18.dart';
import 'package:getx_tut/A019_FetchDisplayDataApiData/home_screen19.dart';
import 'package:getx_tut/A020_GetStorage&EmailValidation/home_screen20.dart';
import 'package:getx_tut/A023_FetchApiDataWithGetConnect&StateMixin/home_screen23.dart';
import 'package:getx_tut/A032_Check&ListenForInternetConnectivityChanges/home_screen32.dart';
import 'package:getx_tut/A033_ImagePickerFromGallery&Camera/home_screen33.dart';
import 'package:getx_tut/A039_ScrollController&ScrollNotification/home_screen39.dart';
import 'package:getx_tut/A040_CarouselSlider/home_screen40.dart';
import 'package:getx_tut/A041_PlayVideoByChewiePackage&GetX/home_screen41.dart';
import 'package:getx_tut/A042_DraggableScrollableSheet&HighlightSelectedItemInListView/home_screen42.dart';
import 'package:getx_tut/A043_AutoFormValidation/home_screen43.dart';
import 'package:getx_tut/A044_Draggable&DragTarget/home_screen44.dart';
import 'package:getx_tut/A045_DraggableDragTartget/home_screen45.dart';
import 'package:getx_tut/A046_SpeechToText/home_screen46.dart';
import 'package:getx_tut/A049_ReorderableListView/home_screen49.dart';
import 'package:getx_tut/A050_AnimatedBottomNavigationBar/home_screen50.dart';
import 'package:getx_tut/A051_SignatureWidget&ExportingSignature/home_screen51.dart';
import 'package:getx_tut/A056_DismissKeyboardOnTap&Scroll/home_screen56.dart';
import 'package:getx_tut/A057_A058_QrCodeGenerator&Scanner/home_screen57.dart';
import 'package:getx_tut/A059_CustomLoaderWithStateMixin/Views/home_screen59.dart';
import 'package:getx_tut/A061_DirectphoneCall&CopyPhoneNumberToDialerScreen/home_screen61.dart';
import 'package:getx_tut/A062_Scratcher/home_screen62.dart';
import 'package:getx_tut/A064_ExpnadableBottomSheet/home_screen64.dart';
import 'package:getx_tut/A066_UserLocation&Address/home_screen66.dart';
import 'package:getx_tut/A068_StepperWidget/home_screen68.dart';
import 'package:getx_tut/A070_PasswordStrengthMeter/home_screen70.dart';
import 'package:getx_tut/A071_TogglePasswordVisibility/home_screen71.dart';
import 'package:getx_tut/A072_NavigationDrawer/home_screen72.dart';
import 'package:getx_tut/A073_AddingScrollbarToScrollableWidget/home_screen73.dart';
import 'package:getx_tut/A074_AutoComplete/home_screen74.dart';
import 'package:getx_tut/A075_EmojiPicker/home_screen75.dart';
import 'package:getx_tut/A076_DatePicker/home_screen76.dart';
import 'package:getx_tut/A077_TimePicker/home_screen77.dart';
import 'package:getx_tut/A078_DateRangePicker/home_screen78.dart';
import 'package:getx_tut/A079_ElegantNumberButton/home_screen79.dart';
import 'package:getx_tut/A080_NumberPicker/home_screen80.dart';
import 'package:getx_tut/A081_ExpansionPanelList/home_screen81.dart';
import 'package:getx_tut/A082_CopyPasteThroughClipboard/home_screen82.dart';
import 'package:getx_tut/A083_ShowHideFloatingButton/home_screen83.dart';
import 'package:getx_tut/A084_SearchFilterListView/home_screen84.dart';
import 'package:getx_tut/A085_LoadingButtonWithIndicator/home_screen85.dart';
import 'package:getx_tut/A086_FlipCardAnimation/home_screen86.dart';
import 'package:getx_tut/A087_PhoneShakeProperty/home_screen87.dart';
import 'package:getx_tut/A088_MultiSelectDialog/home1_screen88.dart';
import 'package:getx_tut/A089_MultiselectDropdown/home_screen89.dart';
import 'package:getx_tut/A090_AnimatedCircularMenu/home_screen90.dart';
import 'package:getx_tut/A091_ShrinkSideMenu/home_screen91.dart';
import 'package:getx_tut/A092_paranomaWithImagePicker/home_screen92.dart';
import 'package:getx_tut/A093_ReviewSlider/home_screen93.dart';
import 'package:getx_tut/A094_RatingDialog/home_screen94.dart';
import 'package:getx_tut/A095_ConfettiAnimation/home_screen95.dart';
import 'package:getx_tut/A098_DraggableExpandableFab/home_screen98.dart';
import 'package:getx_tut/A099_VideoTrimmer/home_screen99.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Splash/home_screen100.dart';
import 'package:getx_tut/A102_AddDynamicItemsToListView/home_screen102.dart';
import 'package:getx_tut/A103_AnimatedLikeButton/home_screen103.dart';
import 'package:getx_tut/A105_CircleRotatingAnimation/home_screen105.dart';
import 'package:getx_tut/A106_SelectMultipleItemInListView/home_screen106.dart';
import 'package:getx_tut/A125_AnimatedFullScreenSearchDialog/home_screen125.dart';

import 'A002_Snackbar/a01_snackbar.dart';
import 'A003_Dialog/a01_dialog.dart';
import 'A004_BottomSheet_DynamicTheme/a01_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

/// Code for A020 & also for A100
// Future<void> main() async {
//   await GetStorage.init();      ///initialize storage driver
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,),
        useMaterial3: true,
      ),
      home: HomeScreen125(),
    );
  }
}

