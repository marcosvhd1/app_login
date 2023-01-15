import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        icon: const Image(
          width: 30,
          image: AssetImage(appGoogleImage),
        ),
        label: Text('Sign-In with Google'.toUpperCase()),
        onPressed: () {},
      ),
    );
  }
}
