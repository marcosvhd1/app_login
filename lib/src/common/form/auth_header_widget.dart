import 'package:flutter/material.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.imageColor,
    this.imageHeight = 0.2,
    this.imageBetween,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String image, title, subtitle;
  final Color? imageColor;
  final double imageHeight;
  final double? imageBetween;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Image(image: AssetImage(image), color: imageColor, height: size.height * imageHeight),
          SizedBox(height: imageBetween),
          Text(title, style: Theme.of(context).textTheme.headline1),
          Text(subtitle, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }
}
