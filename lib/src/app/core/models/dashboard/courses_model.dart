import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';

class DashboardCoursesModel {
  final String image, title, heading, subHeading;
  final VoidCallback? onPress;

  DashboardCoursesModel({
    required this.image,
    required this.title,
    required this.heading,
    required this.subHeading,
    required this.onPress,
  });

  static List<DashboardCoursesModel> list = [
    DashboardCoursesModel(
      image: appDashboardTopCoursesImage,
      title: 'Flutter Crash Course',
      heading: '3 sections',
      subHeading: 'Programming Languages',
      onPress: null,
    ),
    DashboardCoursesModel(
      image: appDashboardTopCoursesImage,
      title: 'Dark Week',
      heading: '30 sections',
      subHeading: 'Programming Languages',
      onPress: null,
    ),
  ];
}
