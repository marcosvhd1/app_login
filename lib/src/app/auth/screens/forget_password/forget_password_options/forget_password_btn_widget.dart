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
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: ontap,
      child: Ink(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDark ? appSecondaryColor : Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(icon, size: 60, color: isDark ? appWhiteColor : appDarkColor),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: isDark ? appWhiteColor : appDarkColor)),
                Text(subtitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: isDark ? appWhiteColor : appDarkColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
