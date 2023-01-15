import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/dashboard.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: appFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_rounded),
                labelText: 'E-mail',
                hintText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint_rounded),
                labelText: 'Senha',
                hintText: 'Senha',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye_rounded),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => ForgetPasswordScreen.buildBottomSheet(context),
                child: const Text('Forget Password?'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(appLoginText.toUpperCase()),
                onPressed: () => Get.to(() => const DashboardScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}