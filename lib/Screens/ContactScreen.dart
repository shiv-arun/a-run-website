import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../common.dart';
import 'Navigation.dart';

class ContactScreen extends StatefulWidget {
  static const id = "ContactScreen";
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                    borderRadius: BorderRadius.circular(radius),
                    color: containerColor
                ),
                child:Row(
                  children: [
                    Expanded(
                      flex: 5,
                        child: Padding(
                          padding:  EdgeInsets.only(left: width5.w,right: width5.w),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height3.h,
                                ),
                                Text(
                                    nameText,
                                    textScaleFactor: textScaleFactor,
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: font8.sp
                                    ),
                                ),
                                SizedBox(
                                  height: height3.h/2,
                                ),
                                Material(
                                  color: inputColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(radius15)
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h,
                                ),
                                Text(
                                  emailText,
                                  textScaleFactor: textScaleFactor,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: font8.sp
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h/2,
                                ),
                                Material(
                                  color: inputColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(radius15)
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h,
                                ),
                                Text(
                                  mobileText,
                                  textScaleFactor: textScaleFactor,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: font8.sp
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h/2,
                                ),
                                Material(
                                  color: inputColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(radius15)
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h,
                                ),
                                Text(
                                  textAreaLabelText,
                                  textScaleFactor: textScaleFactor,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: font8.sp
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h/2,
                                ),
                                Material(
                                  color: inputColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(radius15)
                                  ),
                                  child: TextFormField(
                                    maxLines: 5,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height3.h,
                                ),
                                Center(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                      height: sendButtonH.h,
                                      width: sendButtonW.w
                                    ),
                                    child: ElevatedButton(
                                        onPressed: (){

                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: backgroundColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(radius15),
                                                side: BorderSide(
                                                    color: backgroundColor.withOpacity(0.5)
                                                )
                                            )
                                        ),
                                        child: Text(
                                          sendText,
                                          textScaleFactor: textScaleFactor,
                                          style: TextStyle(
                                              color: linkColor,
                                              fontSize: font8.sp
                                          ),
                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height3.h,bottom: height3.h),
                      height: double.infinity,
                      width: 5,
                      color: linkColor,
                    ),
                    Expanded(
                      flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: width8.w,right: width8.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height3.h,
                              ),
                              ElevatedButton(
                                  onPressed: (){

                                  },
                                style: ElevatedButton.styleFrom(
                                    primary: backgroundColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(radius15),
                                        side: BorderSide(
                                            color: backgroundColor.withOpacity(0.5)
                                        )
                                    )
                                ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(facebookImage,width: width2.w*2,),
                                      ),
                                      SizedBox(
                                        width: width2.w,
                                      ),
                                      Text(
                                          facebook,
                                          textScaleFactor: textScaleFactor,
                                          style: TextStyle(
                                            color: textColor,
                                            fontSize: font8.sp
                                          ),
                                      )
                                    ],
                                  ),

                              ),
                              SizedBox(
                                height: height3.h,
                              ),
                              ElevatedButton(
                                  onPressed: (){

                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: backgroundColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(radius15),
                                          side: BorderSide(
                                              color: backgroundColor.withOpacity(0.5)
                                          )
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(instagramImage,width: width2.w*2,),
                                      ),
                                      SizedBox(
                                        width: width2.w,
                                      ),
                                      Text(
                                        instagram,
                                        textScaleFactor: textScaleFactor,
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: font8.sp
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              SizedBox(
                                height: height3.h,
                              ),
                              ElevatedButton(
                                  onPressed: (){

                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: backgroundColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(radius15),
                                          side: BorderSide(
                                              color: backgroundColor.withOpacity(0.5)
                                          )
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(githubImage,width: width2.w*2,),
                                      ),
                                      SizedBox(
                                        width: width2.w,
                                      ),
                                      Text(
                                        github,
                                        textScaleFactor: textScaleFactor,
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: font8.sp
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              SizedBox(
                                height: height3.h,
                              ),
                            ],
                          ),
                        )
                    )
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}
