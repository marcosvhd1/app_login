import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common/fade_animation/animation_design.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_controller.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_model.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppFadeAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AppFadeAnimation(
              durationInMs: 1600,
              animate: AppAnimatePosition(topAfter: -60, topBefore: -30, leftBefore: -30, leftAfter: -20),
              child: Container(
                width: appSplashContainerSize * 5,
                height: appSplashContainerSize * 5,
                decoration: BoxDecoration(
                  color: appPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            AppFadeAnimation(
              durationInMs: 1600,
              animate: AppAnimatePosition(topAfter: 90, topBefore: 80, leftBefore: -80, leftAfter: appDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(appName, style: Theme.of(context).textTheme.headline1),
                  Text(appTagLine, style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
            AppFadeAnimation(
              durationInMs: 1600,
              animate: AppAnimatePosition(topAfter: 300, topBefore: 300, rightBefore: -40, rightAfter: 80),
              child: const Image(image: AssetImage(appSplashImage)),
            ),
            AppFadeAnimation(
              durationInMs: 1600,
              animate: AppAnimatePosition(bottomAfter: 40, bottomBefore: 0, rightBefore: appDefaultSize, rightAfter: appDefaultSize),
              child: Container(
                width: appSplashContainerSize,
                height: appSplashContainerSize,
                decoration: BoxDecoration(
                  color: appPrimaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
