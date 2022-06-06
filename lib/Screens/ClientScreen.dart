import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../common.dart';
import 'Navigation.dart';

class ClientScreen extends StatefulWidget {
  static const id = "ClientScreen";
  const ClientScreen({Key? key}) : super(key: key);

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
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
                  borderRadius: BorderRadius.circular(20),
                  color: containerColor
              ),
              child:  ListView.separated(
                  padding: EdgeInsets.all(padding1.w*2),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(padding1.w*2),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(0.3),
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(radius),
                      ),
                      child: Text(
                        dummyText,
                        //remove the comment below during final release and comment the above line
                        // finalTexts[index],
                        textScaleFactor: textScaleFactor,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontSize: font5.sp,
                          color: textColor,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: height5.h,
                    );
                  },
                  itemCount: 5
                  //remove the comment below during final release and comment the above line
                  // itemCount: finalTexts.length
              ),
            ),
          )
        ],
      ),
    );
  }
}
