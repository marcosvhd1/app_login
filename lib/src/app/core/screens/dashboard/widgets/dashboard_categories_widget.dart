import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/core/models/dashboard/categories_model.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';

class DashboardCategoriesWidget extends StatelessWidget {
  const DashboardCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final list = DashboardCategoriesModel.list;
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: list[index].onPress,
                child: SizedBox(
                  width: 170,
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: appDarkColor,
                        ),
                        child: Center(
                          child: Text(
                            list[index].title,
                            style:
                                textTheme.headline6?.apply(color: appWhiteColor),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              list[index].heading,
                              style: textTheme.headline6,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              list[index].subHeading,
                              style: textTheme.bodyText2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: appDashboardPadding),
      ],
    );
  }
}
