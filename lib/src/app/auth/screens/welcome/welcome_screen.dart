import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/login/login_screen.dart';
import 'package:flutter_login_app/src/app/auth/screens/signup/signup_screen.dart';
import 'package:flutter_login_app/src/common/fade_animation/animation_design.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_controller.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_model.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppFadeAnimationController());
    controller.startAnimation();

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          AppFadeAnimation(
            durationInMs: 1200,
            animate: AppAnimatePosition(
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
              bottomAfter: 0,
              bottomBefore: -100,
            ),
            child: Container(
              padding: const EdgeInsets.all(appDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: const AssetImage(appWelcomeScreenImage),
                      height: size.height * 0.5),
                  Column(
                    children: [
                      Text(
                        appWelcomeTitle,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        appWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(appLoginText.toUpperCase()),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const SignUpScreen()),
                          child: Text(appSignupText.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
