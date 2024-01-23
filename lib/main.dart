import 'package:e_wallet/view/pages/home_page.dart';
import 'package:e_wallet/view/pages/onboarding_page.dart';
import 'package:e_wallet/view/pages/sign_in_pages/sign_in_page.dart';
import 'package:e_wallet/view/pages/sign_up_pages/sign_up_page.dart';
import 'package:e_wallet/view/pages/sign_up_pages/sign_up_set_id_page.dart';
import 'package:e_wallet/view/pages/sign_up_pages/sign_up_set_profile_page.dart';
import 'package:e_wallet/view/pages/sign_up_pages/sign_up_success_page.dart';
import 'package:e_wallet/view/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInpage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfile(),
        '/sign-up-set-id': (context) => const SignUpSetIDPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
