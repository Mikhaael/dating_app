import 'package:dating_app/components/button.dart';
import 'package:dating_app/components/spacers.dart';
import 'package:dating_app/utils/designs/colors.dart';
import 'package:dating_app/utils/designs/styles.dart';
import 'package:dating_app/utils/res/res_profile.dart';
import 'package:flutter/material.dart';
import '../utils/designs/routes.dart';
// import '../utils/designs/assets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
const double space = 18.0;


class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    final usernameOrEmailController = TextEditingController();

    return SafeArea(
        child: Scaffold(
          body: Material(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: ListView(
                // shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 35.0),
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      ResWelcomeScreen.welcomeBack,
                      style: sWelcomeBack,
                    ),
                  ),
                  vSpace(space),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      ResWelcomeScreen.accountLogin,
                      style: sAccountLogin,
                    ),
                  ),
                  vSpace(space * 4.2),
                  TextFormField(
                    controller: usernameOrEmailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255,  0.12),
                      hintText: ResWelcomeScreen.usernameOrEmail,
                      hintStyle: sHintTextStyle.copyWith(color: Colors.white),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20.8,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(13)
                        ),
                        borderSide: BorderSide(color: Colors.transparent, width: 3.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                            color: Colors.transparent, width: 3.0
                        ),
                      ),
                    ),
                  ),
                  vSpace(space * 1.6),
                  primaryButton(
                      text: ResWelcomeScreen.login,
                      onClick: () {},
                      fillColor: kPrimaryColor,
                      textColor: Colors.white,
                  ),
                  vSpace(space * 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ResWelcomeScreen.noAccount,
                        style: sPrimaryTextStyle,
                      ),
                      hSpace(space / 3),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, Routes.signUp),
                        child: Text(
                          ResWelcomeScreen.register,
                          style: sPrimaryTextStyle.copyWith(color: kPrimaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
