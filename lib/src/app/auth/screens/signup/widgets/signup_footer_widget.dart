import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common/google_button/google_button.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('OR'),
        const SizedBox(height: appFormHeight - 20),
        const GoogleButton(),
        const SizedBox(height: appFormHeight - 20),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: appAlreadyHaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: appLoginText,
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
