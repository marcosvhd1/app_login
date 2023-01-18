import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find<UserRepository>();

  final _db = FirebaseFirestore.instance;

  Future<void> createUser(UserModel user) async {
    await _db
        .collection("users")
        .add(user.toJSON())
        .whenComplete(() => Get.snackbar(
              "Sucess",
              "You account has been created.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green,
              margin: const EdgeInsets.all(10),
            ))
        .catchError((error, stackTrace) {
      Get.snackbar(
        "Error",
        "Something went wrong. Try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
        margin: const EdgeInsets.all(10),
      );
      log(error.toString());
    });
  }

  Future<UserModel> getUserDetails(String email) async {
    final snapshot = await _db.collection("users").where("email", isEqualTo: email).get();
    final userData = snapshot.docs.map((user) => UserModel.fromSnapshot(user)).single;

    return userData;
  }

  Future<List<UserModel>> getAllUsers() async {
    final snapshot = await _db.collection("users").get();
    final userData = snapshot.docs.map((user) => UserModel.fromSnapshot(user)).toList();
    
    return userData;
  }

  Future<void> updateUserData(UserModel user) async {
    await _db.collection("users").doc(user.id).update(user.toJSON());
  }
}
