import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/controllers/on_boarding_controller.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final ob = Get.find<OnBoardingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: ob.controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new_rounded),
            enableSideReveal: true,
            onPageChangeCallback: ob.handleOnPageChange,
            pages: ob.pages,
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              child: const Text('Skip', style: TextStyle(color: Colors.grey)),
              onPressed: () => ob.skip(),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                count: 4,
                activeIndex: ob.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: appSecondaryColor,
                  dotHeight: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
