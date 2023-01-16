import 'package:flutter/cupertino.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find<SignUpController>();

  final controller = Get.find<AuthRepository>();

  //form key
  final formKey = GlobalKey<FormState>();

  //controllers
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser() {
    if (formKey.currentState!.validate()) {
      //SIGNUP WITH EMAIL AND PASSOWORD
      controller.createUserWithEP(email.text, password.text);
    }
  }

  void phoneAuth() {
    //SIGNUP WITH PHONE NUMBER
    controller.phoneAuth(phoneNo.text);
  }
}
