import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_email/forget_password_email.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (context) => SingleChildScrollView(        
        padding: const EdgeInsets.all(appDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appForgetPasswordTitle,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              appForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 30),
            ForgetPasswordBtnWidget(
              icon: Icons.email_rounded,
              title: 'E-mail',
              subtitle: appResetViaEmail,
              ontap: () {
                Navigator.of(context).pop();
                Get.to(() => const ForgetPasswordEmailScreen());
              },
            ),
            const SizedBox(height: 20),
            ForgetPasswordBtnWidget(
              icon: Icons.mobile_friendly_rounded,
              title: 'Phone N°',
              subtitle: appResetViaPhone,
              ontap: () {
                Navigator.of(context).pop();
                Get.to(() => const ForgetPasswordPhoneScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
