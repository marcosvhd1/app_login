import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_controller.dart';
import 'package:flutter_login_app/src/common/fade_animation/fade_animation_model.dart';
import 'package:get/get.dart';

class AppFadeAnimation extends StatelessWidget {
  AppFadeAnimation({
    Key? key,
    required this.durationInMs,
    this.animate,
    required this.child,
  }) : super(key: key);

  final fadeAnimation = Get.find<AppFadeAnimationController>();
  final int durationInMs;
  final AppAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: fadeAnimation.animated.value ? animate!.topAfter : animate!.topBefore,
        left: fadeAnimation.animated.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: fadeAnimation.animated.value ? animate!.bottomAfter : animate!.bottomBefore,
        right: fadeAnimation.animated.value ? animate!.rightAfter : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: fadeAnimation.animated.value ? 1 : 0,
          child: child,
        ),
      ),
    );
  }
}
