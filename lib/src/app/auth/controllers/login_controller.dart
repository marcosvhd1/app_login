import 'package:flutter/cupertino.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find<LoginController>();

  final controller = Get.find<AuthRepository>();

  //form key
  final formKey = GlobalKey<FormState>();

  //controllers
  final email = TextEditingController();
  final password = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isPasswordVisible = true.obs;

  changeVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
  
  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      await controller.loginWithEP(email.text, password.text);
      isLoading.value = false;
    }
  }

}
