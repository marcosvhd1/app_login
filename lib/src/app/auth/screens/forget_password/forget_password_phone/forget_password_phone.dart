import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter_login_app/src/common/form/auth_header_widget.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

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
                  subtitle: appResetViaPhoneSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  imageBetween: 30,
                ),
                const SizedBox(height: appFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.numbers_rounded),
                          labelText: 'Phone N°',
                          hintText: 'Phone N°',
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
