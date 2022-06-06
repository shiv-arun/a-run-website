import 'package:a_run/Screens/AboutUsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'common.dart';

class LandingScreen extends StatefulWidget {
  static const id = "LandingScreen";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeTransition;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 3));
    _fadeTransition = Tween(begin: 0.0,end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    _controller.addStatusListener((status) {
      Navigator.pushReplacementNamed(context, AboutUsScreen.id);
    });
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: FadeTransition(
          opacity: _fadeTransition,
          child: Center(
            child: Image.asset(appLogo),
          ),
        ),
      ),
    );
  }
}
