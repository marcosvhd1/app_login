import 'package:flutter_login_app/src/app/core/screens/dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:flutter_login_app/src/repository/auth/auth_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find<OTPController>();

  final authRepository = Get.find<AuthRepository>();

  void verifyOTP(String otp) async {
    var isVerified = await authRepository.verifyOTP(otp);
    isVerified ? Get.offAll(const DashboardScreen()) : Get.back();
  }
}