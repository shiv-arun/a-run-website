import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../common.dart';
import 'Navigation.dart';

class OurTeamScreenScreen extends StatefulWidget {
  static const id = "OurTeamScreenScreen";
  const OurTeamScreenScreen({Key? key}) : super(key: key);

  @override
  State<OurTeamScreenScreen> createState() => _OurTeamScreenScreenState();
}

class _OurTeamScreenScreenState extends State<OurTeamScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const Navigation(),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: margin1.w,right: margin1.w,bottom: margin1.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: containerColor
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height5.h,
                    ),
                    Text(
                        "Our Developer Team",
                        textScaleFactor: textScaleFactor,
                        style: TextStyle(
                          fontSize: font8.sp,
                          color: textColor
                        ),
                    ),
                    SizedBox(
                      height: height5.h,
                    ),
                    team("imageContainer.png","John Doe","Lead Developer","3.5+ yr Experience"),
                    SizedBox(
                      height: height5.h,
                    ),
                    team("imageContainer2.png","Mikhail Morrison","IT specialist","1+ yr Experience"),
                    SizedBox(
                      height: height5.h,
                    ),
                    team("imageContainer3.png","Tibby Vinter","Graphic Designer","2+ yr Experience"),
                    SizedBox(
                      height: height5.h,
                    ),
                    team("imageContainer4.png","Mary Espensen","Tester","3+ yr Experience"),
                    SizedBox(
                      height: height5.h,
                    ),
                  ],
                ),
              )
            ),
          )
        ],
      ),
    );
  }

  team(String imagePath,String name,String position,String experience) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  fontSize: font8.sp,
                  color: textColor
              ),
            ),
            SizedBox(
              height: height5.h/3,
            ),
            Text(
              position,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  fontSize: font8.sp,
                  color: textColor
              ),
            ),
            SizedBox(
              height: height5.h/3,
            ),
            Text(
              experience,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  fontSize: font8.sp,
                  color: textColor
              ),
            )
          ],
        )
      ],
    );
  }
}
