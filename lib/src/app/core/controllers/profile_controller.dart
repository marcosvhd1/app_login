import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/models/user_model.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';
import 'package:flutter_login_app/src/repository/user/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find<ProfileController>();

  final authRepo = Get.find<AuthRepository>();
  final userRepo = Get.put(UserRepository());

  Rx<UserModel> user =
      UserModel(email: '', password: '', fullName: '', phoneNo: '').obs;

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  RxBool isPasswordVisible = true.obs;

  changeVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  getUserData() async {
    final emailUser = authRepo.firebaseUser.value?.email;

    if (emailUser != null) {
      user.value = await userRepo.getUserDetails(emailUser);

      email.text = user.value.email;
      password.text = user.value.password;
      fullName.text = user.value.fullName;
      phoneNo.text = user.value.phoneNo;

      return user.value;
    } else {
      Get.snackbar(
        "Erro",
        "Faça o login para continuar.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
        margin: const EdgeInsets.all(10),
      );
    }
  }

  Future<List<UserModel>> getAllUsers() async {
    return await userRepo.getAllUsers();
  }

  updateUserData() async {
    UserModel newUserData = UserModel(
      id: user.value.id,
      email: email.text,
      password: password.text,
      fullName: fullName.text,
      phoneNo: phoneNo.text,
    );

    await userRepo.updateUserData(newUserData);

    user.value = newUserData;
  }
}
