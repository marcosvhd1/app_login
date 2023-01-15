import 'package:flutter_login_app/src/app/auth/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AppFadeAnimationController extends GetxController{
  static AppFadeAnimationController get find => Get.find<AppFadeAnimationController>();

  RxBool animated = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animated.value = true;
    await Future.delayed(const Duration(milliseconds: 2000));
    animated.value = false;
    Get.offAll(() => const WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animated.value = true;
  }
}