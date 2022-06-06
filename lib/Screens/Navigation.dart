import 'package:a_run/Screens/AboutUsScreen.dart';
import 'package:a_run/Screens/ClientScreen.dart';
import 'package:a_run/Screens/OurTeamScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../common.dart';
import 'ContactScreen.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin1.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor
      ),
      child: Row(
        children: [
          Image.asset(appLogo,height: 15.0.h,fit: BoxFit.fill,),
          const Spacer(),
          InkWell(
            child: Text(
              aboutUs,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  color: linkColor,
                  fontSize: font5.sp
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, AboutUsScreen.id);
            },
          ),
          SizedBox(
            width: width2.w,
          ),
          InkWell(
            child: Text(
              clients,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  color: linkColor,
                  fontSize: font5.sp
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, ClientScreen.id);
            },
          ),
          SizedBox(
            width: width2.w,
          ),
          InkWell(
            child: Text(
              ourTeam,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  color: linkColor,
                  fontSize: font5.sp
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, OurTeamScreenScreen.id);
            },
          ),
          SizedBox(
            width: width2.w,
          ),
          InkWell(
            child: Text(
              getInContact,
              textScaleFactor: textScaleFactor,
              style: TextStyle(
                  color: linkColor,
                  fontSize: font5.sp
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, ContactScreen.id);
            },
          ),
          SizedBox(
            width: width2.w,
          ),
        ],
      ),
    );
  }
}
