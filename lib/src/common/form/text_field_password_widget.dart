import 'package:flutter/material.dart';

class TextFieldPasswordWidget extends StatelessWidget {
  const TextFieldPasswordWidget({
    super.key,
    required this.controller,
    required this.visible,
    required this.onPressed,
  });

  final TextEditingController controller;
  final bool visible;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: visible,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.fingerprint_rounded),
        labelText: 'Senha',
        hintText: 'Senha',
        suffixIcon: IconButton(
          icon: const Icon(Icons.remove_red_eye_rounded),
          onPressed: () => onPressed(),
        ),
      ),
    );
  }
}
