import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/controllers/login_controller.dart';
import 'package:flutter_login_app/src/app/auth/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:flutter_login_app/src/common/form/text_field_password_widget.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Form(
      key: controller.formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: appFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                labelText: 'E-mail',
                hintText: 'E-mail',
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            Obx(
              () => TextFieldPasswordWidget(
                controller: controller.password,
                visible: controller.isPasswordVisible.value,
                onPressed: controller.changeVisibility,
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
              child: Obx(
                () => ElevatedButton(
                  child: controller.isLoading.value
                      ? SizedBox(
                          height: 15,
                          width: 15,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: isDark ? appDarkColor : appWhiteColor,
                          ),
                        )
                      : Text(appLoginText.toUpperCase()),
                  onPressed: () => controller.login(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
