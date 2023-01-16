import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/controllers/otp_controller.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final otpController = Get.put(OTPController());
    String otp = '';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(appDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  appOtpTitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  appOtpSubTitle.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 40),
                const Text(
                  '$appOtpMessage marcosvhd1@gmail.com',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: OtpTextField(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    mainAxisAlignment: MainAxisAlignment.center,
                    numberOfFields: 6,
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    onSubmit: (code) {
                      otp = code;
                      otpController.verifyOTP(otp);
                    },
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('Next'.toUpperCase()),
                    onPressed: () {
                      otpController.verifyOTP(otp);
                    },
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
