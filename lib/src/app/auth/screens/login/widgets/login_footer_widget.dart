import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common/google_button/google_button.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(height: appFormHeight - 20),
        const GoogleButton(),
        const SizedBox(height: appFormHeight - 20),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: appDontHaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: appSignupText,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
