import 'dart:async';

import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Image.asset(
          'assets/img_logo_dark.png',
          width: 155,
          height: 50,
        ),
      ),
    );
  }
}
