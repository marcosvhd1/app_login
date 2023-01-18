import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/widgets/dashboard_banner_widget.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/widgets/dashboard_categories_widget.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/widgets/dashboard_header_widget.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/widgets/dashboard_search_widget.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/widgets/dashboard_top_courses_widget.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/widgets/dashboard_user_button_widget.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(appName, style: Theme.of(context).textTheme.headline4),
        leading: Icon(Icons.filter_list_rounded,
            color: isDark ? appWhiteColor : appDarkColor),
        actions: const [DashboardUserButtonWidget()],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(appDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DashboardHeaderWidget(),
              DashboardSearchWidget(),
              DashboardCategoriesWidget(),
              DashboardBannerWidget(),
              DashboardTopCoursesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
