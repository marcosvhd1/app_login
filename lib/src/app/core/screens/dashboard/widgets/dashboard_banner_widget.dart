import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class DashboardBannerWidget extends StatelessWidget {
  const DashboardBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isDark ? appSecondaryColor : appCardBgColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Image(
                          image: AssetImage(appDashboardBookMark),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                          child: Image(
                            image: AssetImage(appDashboardBannerImage1),
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      appDashboardBannerTitle1,
                      style: textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      appDashboardBannerSubTitle,
                      style: textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: appDashboardCardPadding),
            Flexible(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isDark ? appSecondaryColor : appCardBgColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Image(
                          image: AssetImage(appDashboardBookMark),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                          child: Image(
                            image: AssetImage(appDashboardBannerImage2),
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      appDashboardBannerTitle2,
                      style: textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      appDashboardBannerSubTitle,
                      style: textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: const Text(appDashboardButton),
          ),
        ),
        const SizedBox(height: appDashboardPadding),
      ],
    );
  }
}
