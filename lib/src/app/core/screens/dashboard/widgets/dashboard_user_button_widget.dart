import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';

class DashboardUserButtonWidget extends StatelessWidget {
  const DashboardUserButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, top: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: appCardBgColor,
      ),
      child: IconButton(
        icon: const Image(image: AssetImage(appDashboardUserImage)),
        onPressed: () {},
      ),
    );
  }
}
