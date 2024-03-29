import 'package:e_wallet/blocs/auth/auth_bloc.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/view/pages/data_provider_page/data_package_page.dart';
import 'package:e_wallet/view/pages/data_provider_page/data_success_page.dart';
import 'package:e_wallet/view/pages/home_page.dart';
import 'package:e_wallet/view/pages/onboarding_page.dart';
import 'package:e_wallet/view/pages/pin_page.dart';
import 'package:e_wallet/view/pages/profile_pages/profile_edit_pin_page.dart';
import 'package:e_wallet/view/pages/profile_pages/edit_profile_page.dart';
import 'package:e_wallet/view/pages/profile_pages/profile_page.dart';
import 'package:e_wallet/view/pages/profile_pages/profile_success_page.dart';
import 'package:e_wallet/view/pages/data_provider_page/data_provider_page.dart';
import 'package:e_wallet/view/pages/sign_in_pages/sign_in_page.dart';
import 'package:e_wallet/view/pages/sign_up_pages/sign_up_page.dart';
import 'package:e_wallet/view/pages/sign_up_pages/sign_up_success_page.dart';
import 'package:e_wallet/view/pages/splash_page.dart';
import 'package:e_wallet/view/pages/top_up_pages/top_up_page.dart';
import 'package:e_wallet/view/pages/top_up_pages/topup_amount_page.dart';
import 'package:e_wallet/view/pages/top_up_pages/topup_succcess.dart';
import 'package:e_wallet/view/pages/transfer_pages/transfer_amount._page.dart';
import 'package:e_wallet/view/pages/transfer_pages/transfer_page.dart';
import 'package:e_wallet/view/pages/transfer_pages/transfer_success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()
            ..add(
              AuthGetCurrentUser(),
            ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: lightBackgroundColor,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 20,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/profile-edit': (context) => const EditProfilePage(),
          '/profile-pin-edit': (context) => const ProfileEditPinPage(),
          '/profile-edit-success': (context) => const ProfileSuccessPage(),
          '/topup': (context) => const TopUpPage(),
          '/topup-amount': (context) => const TopUpAmountPage(),
          '/topup-success': (context) => const TopUpSuccessPage(),
          '/transfer': (context) => const Transferpage(),
          '/transfer-amount': (context) => const TransferAmountPage(),
          '/transfer-success': (context) => const TransferSuccessPage(),
          '/data-provider': (context) => const DataProviderPage(),
          '/data-package': (context) => const DataPackagePage(),
          '/data-success': (context) => const DataSuccessPage(),
        },
      ),
    );
  }
}
