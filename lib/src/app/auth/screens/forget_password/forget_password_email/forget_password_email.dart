import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter_login_app/src/common/form/auth_header_widget.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(appDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: appDefaultSize * 4),
                const AuthHeaderWidget(
                  image: appForgetPasswordImage,
                  title: 'Forget Password',
                  subtitle: appResetViaEmailSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  imageBetween: 30,
                ),
                const SizedBox(height: appFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_rounded),
                          labelText: 'E-mail',
                          hintText: 'E-mail',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: appFormHeight - 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('Next'.toUpperCase()),
                          onPressed: () => Get.to(() => const OTPScreen()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
