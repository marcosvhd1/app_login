import 'package:flutter/cupertino.dart';
import 'package:flutter_login_app/src/app/auth/controllers/on_boarding_controller.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_controller.dart';
import 'package:get/get.dart';

class AppConfig { 
  static initConfigs() {
    WidgetsFlutterBinding.ensureInitialized();
    Get.lazyPut(() => AppFadeAnimationController());
    Get.lazyPut(() => OnBoardingController());
  }
}