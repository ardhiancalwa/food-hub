import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodhub/infrastructure/theme/colors.dart';
import 'package:foodhub/presentation/signup_page/widgets/textfield.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/signup_page.controller.dart';

class SignupPageScreen extends GetView<SignupPageController> {
  const SignupPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutralColor,
      body: Stack(
        children: [
          Positioned(
            left: -46,
            top: -21,
            child: Image.asset(
              'assets/images/backgrounds/circular_orange_small.png',
            ),
          ),
          Positioned(
            left: -5,
            top: -99,
            child: Image.asset(
              'assets/images/backgrounds/circular_orange_middle.png',
            ),
          ),
          Positioned(
            left: 298,
            top: -109,
            child: Image.asset(
              'assets/images/backgrounds/circular_orange_big.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 26,
              right: 26,
              top: 98,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 36.41,
                      fontFamily: 'Sofia pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  TextfieldSignUp(
                    title: 'Full name',
                    hintText: 'Arlene Mccoy',
                    controller: controller.fullnameC,
                    isObsecure: false,
                    typeKeyboard: TextInputType.text,
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  TextfieldSignUp(
                    title: 'E-mail',
                    hintText: 'prelookstudio@gmail.com',
                    controller: controller.emailC,
                    isObsecure: false,
                    typeKeyboard: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  TextfieldSignUp(
                    title: 'Password',
                    hintText: '**********',
                    controller: controller.passC,
                    isObsecure: true,
                    typeKeyboard: TextInputType.text,
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Center(
                    child: SizedBox(
                      width: 248,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.5),
                          ),
                          surfaceTintColor: primaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: neutralColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            fontFamily: 'Sofia pro',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontFamily: 'Sofia pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              fontFamily: 'Sofia pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes.HOME);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Divider(
                            color: Color(0xffB3B3B3),
                            thickness: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17.0),
                        child: Text(
                          'Sign up with',
                          style: TextStyle(
                            color: Color(0xff5B5B5E),
                            fontFamily: 'Sofia pro',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: Divider(
                            color: Color(0xffB3B3B3),
                            thickness: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 139.26,
                        height: 54,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: neutralColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          ).copyWith(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(WidgetState.pressed)) {
                                return neutralColor
                                    .withOpacity(0.7); // Color when pressed
                              } else if (states.contains(WidgetState.hovered)) {
                                return neutralColor
                                    .withOpacity(0.5); // Color when hovered
                              }
                              return neutralColor; // Default color
                            }),
                            overlayColor:
                                WidgetStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(WidgetState.pressed)) {
                                return neutralColor.withOpacity(
                                    0.5); // Ripple color when pressed
                              }
                              return null; // Default ripple color
                            }),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/facebook.svg'),
                              SizedBox(
                                width: 8.23,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  fontFamily: 'Sofia pro',
                                  color: blackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 139.26,
                        height: 54,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: neutralColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          ).copyWith(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(WidgetState.pressed)) {
                                return neutralColor
                                    .withOpacity(0.7); // Color when pressed
                              } else if (states.contains(WidgetState.hovered)) {
                                return neutralColor
                                    .withOpacity(0.5); // Color when hovered
                              }
                              return neutralColor; // Default color
                            }),
                            overlayColor:
                                WidgetStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(WidgetState.pressed)) {
                                return neutralColor.withOpacity(
                                    0.5); // Ripple color when pressed
                              }
                              return null; // Default ripple color
                            }),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/google.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontFamily: 'Sofia pro',
                                  color: blackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
