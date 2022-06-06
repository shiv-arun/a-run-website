import 'package:a_run/Screens/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../common.dart';

class AboutUsScreen extends StatefulWidget {
  static const id = "AboutScreen";
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const Navigation(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: margin1.w,right: margin1.w,bottom: margin1.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: containerColor
              ),
              child:  Container(
                padding: EdgeInsets.all(padding1.w*2),
                child: Center(
                  child: Text(
                      //aboutPageText,
                      dummyText,
                      textScaleFactor: textScaleFactor,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: font5.sp,
                        color: textColor,
                      ),
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
