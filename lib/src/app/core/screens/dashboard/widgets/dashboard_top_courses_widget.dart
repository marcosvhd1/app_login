import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/app/core/models/dashboard/courses_model.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class DashboardTopCoursesWidget extends StatelessWidget {
  const DashboardTopCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final list = DashboardCoursesModel.list;
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(appDashboardTopCourses, style: textTheme.headline2),
        const SizedBox(height: appDashboardCardPadding),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark ? appSecondaryColor : appCardBgColor,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              list[index].title,
                              style: textTheme.headline3,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Image(
                            image: AssetImage(list[index].image),
                            height: 110,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                            ),
                            onPressed: () => list[index].onPress,
                            child: const Icon(Icons.play_arrow_rounded),
                          ),
                          const SizedBox(width: appDashboardCardPadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].heading,
                                style: textTheme.headline4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                list[index].subHeading,
                                style: textTheme.bodyText2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
