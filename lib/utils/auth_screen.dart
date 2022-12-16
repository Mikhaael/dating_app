import 'package:dating_app/utils/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/register_controller.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  RegistrationController registrationController = Get.put(RegistrationController());
  LoginController loginController = Get.put(LoginController());

  var isLogin = false.obs;

  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
