import 'package:dating_app/components/spacers.dart';
import 'package:dating_app/components/text_field.dart';
import 'package:dating_app/utils/designs/colors.dart';
import 'package:dating_app/utils/designs/styles.dart';
import 'package:dating_app/utils/res/res_profile.dart';
import '../components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/designs/routes.dart';


class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}
const double space = 18;

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final email2Controller = TextEditingController();
  final form = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: form,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 35.0
            ),
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  ResSignUp.newAccount,
                  style: sCreateAccount,
                ),
              ),
              vSpace(space * 0.72),
              TypeField(
                state: TextFieldState(
                  label: ResSignUp.firstName,
                  controller: firstNameController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
              ),
              vSpace(space * 0.8),
              TypeField(
                state: TextFieldState(
                  label: ResSignUp.lastName,
                  controller: lastNameController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
              ),
              vSpace(space * 0.8),
              TypeField(
                state: TextFieldState(
                  label: ResSignUp.userName,
                  controller: userNameController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
              ),
              vSpace(space * 0.8),
              TypeField(
                state: TextFieldState(
                  label: ResSignUp.email,
                  controller: emailController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
              ),
              vSpace(space * 0.8),
              TypeField(
                state: TextFieldState(
                  label: ResSignUp.confirmEmail,
                  controller: email2Controller,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
              ),
              vSpace(space * 5.8),
              primaryButton(
                  text: ResSignUp.next,
                  onClick: () {},
                  fillColor: kPrimaryColor,
                  textColor: Colors.white,
              ),
              vSpace(space * 1.8),
              Align(
                alignment: Alignment.center,
                child: Text(
                  ResSignUp.policy,
                  style: sHintTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              vSpace(space * 2.9),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ResSignUp.haveAnAccount,
                    style: sPrimaryTextStyle,
                  ),
                  hSpace(space / 3),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.welcome),
                    focusColor: Colors.blue,
                    child: Text(
                      ResSignUp.login,
                      style: sPrimaryTextStyle.copyWith(color: kPrimaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

