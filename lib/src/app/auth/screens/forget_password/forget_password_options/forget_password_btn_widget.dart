import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.ontap,
  }) : super(key: key);

  final IconData icon;
  final String title, subtitle;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: ontap,
      child: Ink(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(icon, size: 60, color: appDarkColor),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: appDarkColor)),
                Text(subtitle, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: appDarkColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
