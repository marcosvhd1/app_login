import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/core/screens/profile/widgets/profile_screen_header_widget.dart';
import 'package:flutter_login_app/src/app/core/screens/profile/widgets/profile_screen_menu_item_widget.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            LineAwesomeIcons.angle_left,
            color: isDark ? appWhiteColor : appDarkColor,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(appProfile, style: txtTheme.headline4),
        actions: [
          IconButton(
            icon: Icon(
              isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
              color: isDark ? appWhiteColor : appDarkColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(appDefaultSize),
          child: Column(
            children: [
              const ProfileScreenHeaderWidget(),
              ProfileScreenMenuItemWidget(
                title: appMenu1,
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              ProfileScreenMenuItemWidget(
                title: appMenu2,
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
              ProfileScreenMenuItemWidget(
                title: appMenu3,
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ),
              const Divider(height: 30),
              ProfileScreenMenuItemWidget(
                title: appMenu4,
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),
              ProfileScreenMenuItemWidget(
                title: appMenu5,
                endIcon: false,
                textColor: Colors.red,
                icon: LineAwesomeIcons.alternate_sign_out,
                onPress: () => AuthRepository.instance.logout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
