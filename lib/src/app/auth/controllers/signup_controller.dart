import 'package:flutter/cupertino.dart';
import 'package:flutter_login_app/src/app/auth/models/user_model.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';
import 'package:flutter_login_app/src/repository/user/user_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find<SignUpController>();

  final controller = Get.find<AuthRepository>();

  final userRepo = Get.put(UserRepository());

  //form key
  final formKey = GlobalKey<FormState>();

  //controllers
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isPasswordVisible = true.obs;

  changeVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> registerUser() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      final user = UserModel(
        email: email.text,
        password: password.text,
        fullName: fullName.text,
        phoneNo: phoneNo.text,
      );

      await userRepo.createUser(user);
      await controller.createUserWithEP(user.email, user.password);

      isLoading.value = false;
    }
  }
}
