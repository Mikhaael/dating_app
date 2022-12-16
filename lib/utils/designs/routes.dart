import 'package:dating_app/screens/sign_up_screen.dart';
import 'package:dating_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';


class Routes {
  static const String welcome = '/';
  static const String signUp = '/signUp';

  static Map<String, Widget Function(BuildContext)> routes = {
    welcome: (context) => const WelcomeScreen(),
    signUp: (context) => const SignUpScreen(),
  };
}