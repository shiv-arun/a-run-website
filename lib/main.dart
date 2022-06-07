import 'package:a_run/LandingScreen.dart';
import 'package:a_run/Screens/AboutUsScreen.dart';
import 'package:a_run/Screens/ClientScreen.dart';
import 'package:a_run/Screens/ContactScreen.dart';
import 'package:a_run/Screens/OurTeamScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'common.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: initialRoute,
          routes: {
            LandingScreen.id: (context) => LandingScreen(),
            AboutUsScreen.id: (context) => AboutUsScreen(),
            ClientScreen.id: (context) => ClientScreen(),
            OurTeamScreenScreen.id: (context) => OurTeamScreenScreen(),
            ContactScreen.id: (context) => ContactScreen(),
          },
        );
      },
    );
  }
}


