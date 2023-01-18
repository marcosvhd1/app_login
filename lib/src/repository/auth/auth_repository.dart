import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/screens/welcome/welcome_screen.dart';
import 'package:flutter_login_app/src/app/core/screens/dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:flutter_login_app/src/repository/auth/errors/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find<AuthRepository>();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  //phone verification
  RxString verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitalScreen);
  }

  _setInitalScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashboardScreen());
  }

  Future<void> verifcationPhoneCode(String phoneNo) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async =>
            await _auth.signInWithCredential(credential),
        codeSent: (verificationId, forceResendingToken) =>
            this.verificationId.value = verificationId,
        codeAutoRetrievalTimeout: (verificationId) =>
            this.verificationId.value = verificationId,
        verificationFailed: (error) => (error.code == 'invalid-phone-number')
            ? Get.snackbar(
                "Erro",
                "The provided phone number is not valid.",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.red.withOpacity(0.1),
                colorText: Colors.red,
                margin: const EdgeInsets.all(10),
              )
            : Get.snackbar(
                "Erro",
                "Algo deu errado.",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.red.withOpacity(0.1),
                colorText: Colors.red,
                margin: const EdgeInsets.all(10),
              ),
      );
    } on FirebaseAuthException catch (error) {
      final ex = SignUpWithEPFailure.code(error.code);
      log('Firebase Auth Exception = ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEPFailure();
      log('Firebase Auth Exception = ${ex.message}');
      throw ex;
    }
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials =
        await _auth.signInWithCredential(PhoneAuthProvider.credential(
      verificationId: verificationId.value,
      smsCode: otp,
    ));

    return credentials.user != null ? true : false;
  }

  Future<void> createUserWithEP(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (error) {
      final ex = SignUpWithEPFailure.code(error.code);
      Get.snackbar(
        "Erro",
        ex.message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
        margin: const EdgeInsets.all(10),
      );
      throw ex.message;
    } catch (_) {
      const ex = SignUpWithEPFailure();
      Get.snackbar(
        "Erro",
        ex.message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.1),
        colorText: Colors.red,
        margin: const EdgeInsets.all(10),
      );
      throw ex;
    }
  }

  Future<void> loginWithEP(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (_) {
    } catch (_) {}
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (_) {
    } catch (_) {}
  }
}
