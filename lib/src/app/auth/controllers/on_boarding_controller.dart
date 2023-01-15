import 'package:flutter_login_app/src/app/auth/models/model_on_boarding.dart';
import 'package:flutter_login_app/src/app/auth/screens/on_boarding/widgets/on_boarding_page_widget.dart';
import 'package:flutter_login_app/src/app/auth/screens/welcome/welcome_screen.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get find => Get.find<OnBoardingController>();

  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: appOnBoardingImage1,
        title: appOnBoardingTitle1,
        subTitle: appOnBoardingSubTitle1,
        counterText: appOnBoardingCounter1,
        bgColor: appOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: appOnBoardingImage2,
        title: appOnBoardingTitle2,
        subTitle: appOnBoardingSubTitle1,
        counterText: appOnBoardingCounter2,
        bgColor: appOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: appOnBoardingImage3,
        title: appOnBoardingTitle3,
        subTitle: appOnBoardingSubTitle1,
        counterText: appOnBoardingCounter3,
        bgColor: appOnBoardingPage3Color,
      ),
    ),
    const WelcomeScreen()
  ];

  handleOnPageChange(int i) => currentPage.value = i;
  skip() => controller.jumpToPage(page: 3);
}
