import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_app/src/config/firebase_options.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';
import 'package:get/get.dart';

class AppConfig {
  static initConfigs() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ).then((value) {
      Get.put(AuthRepository());
    });
    //Get.put(OnBoardingController());
  }
}
