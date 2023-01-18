import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/core/controllers/profile_controller.dart';
import 'package:flutter_login_app/src/common/form/text_field_password_widget.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  UpdateProfileScreen({super.key});

  final _key = GlobalKey<FormState>();
  final controller = Get.put(ProfileController());

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
        title: Text(appEditProfile, style: txtTheme.headline4),
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
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage(appProfileImage)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: appPrimaryColor,
                      ),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        color: appDarkColor,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Form(
                key: _key,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.fullName,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_rounded),
                        labelText: 'Full Name',
                        hintText: 'Full Name',
                      ),
                    ),
                    const SizedBox(height: appFormHeight - 20),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.email,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        labelText: 'E-mail',
                        hintText: 'E-mail',
                      ),
                    ),
                    const SizedBox(height: appFormHeight - 20),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: controller.phoneNo,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.numbers_rounded),
                        labelText: 'Phone N°',
                        hintText: 'Phone N°',
                      ),
                    ),
                    const SizedBox(height: appFormHeight - 20),
                    Obx(
                      () => TextFieldPasswordWidget(
                        controller: controller.password,
                        visible: controller.isPasswordVisible.value,
                        onPressed: controller.changeVisibility,
                      ),
                    ),
                    const SizedBox(height: appFormHeight),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appPrimaryColor,
                          side: BorderSide.none,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () async {
                          await controller.updateUserData();

                          Get.back();

                          Get.snackbar(
                            "Sucesso",
                            "Seus dados foram atualizados!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.green.withOpacity(0.1),
                            colorText: Colors.green,
                            margin: const EdgeInsets.all(10),
                          );
                        },
                        child: const Text(appEditProfile,
                            style: TextStyle(color: appDarkColor)),
                      ),
                    ),
                    const SizedBox(height: appFormHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: appJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                text: appJoinedAt,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: const StadiumBorder(),
                            side: BorderSide.none,
                          ),
                          child: const Text(appDelete),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
