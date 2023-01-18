import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/core/screens/profile/profile_screen.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:get/get.dart';

class DashboardUserButtonWidget extends StatelessWidget {
  const DashboardUserButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(right: 20, top: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isDark ? appSecondaryColor : appCardBgColor,
      ),
      child: IconButton(
        icon: const Image(image: AssetImage(appDashboardUserImage)),
        onPressed: () => Get.to(() => const ProfileScreen()),
      ),
    );
  }
}
