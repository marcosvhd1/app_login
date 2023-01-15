import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class DashboardSearchWidget extends StatelessWidget {
  const DashboardSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(width: 4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                appDashboardSearch,
                style: textTheme.headline2?.apply(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              const Icon(Icons.mic_rounded, size: 25)
            ],
          ),
        ),
        const SizedBox(height: appDashboardPadding),
      ],
    );
  }
}