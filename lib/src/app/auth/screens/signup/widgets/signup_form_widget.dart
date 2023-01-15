import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

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
                labelText: 'Full Name',
                hintText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                labelText: 'E-mail',
                hintText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.numbers_rounded),
                labelText: 'Phone N°',
                hintText: 'Phone N°',
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
            const SizedBox(height: appFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(appSignupText.toUpperCase()),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
