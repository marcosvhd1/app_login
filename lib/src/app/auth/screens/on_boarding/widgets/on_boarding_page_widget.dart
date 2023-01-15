import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/auth/models/model_on_boarding.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({Key? key, required this.model}) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(appDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.5,
          ),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headline2),
              Text(model.subTitle, textAlign: TextAlign.center),
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
