import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/login/widgets/login_footer_widget.dart';
import 'package:flutter_login_app/src/app/auth/screens/login/widgets/login_form_widget.dart';
import 'package:flutter_login_app/src/common/form/auth_header_widget.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(appDefaultSize),
            child: Column(
              children: const [
                AuthHeaderWidget(
                  image: appWelcomeScreenImage,
                  title: appLoginTitle,
                  subtitle: appLoginSubTitle,
                ),
                LoginFormWidget(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}