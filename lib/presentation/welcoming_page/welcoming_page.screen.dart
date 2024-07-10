import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodhub/infrastructure/navigation/routes.dart';
import 'package:foodhub/infrastructure/theme/colors.dart';
import 'package:get/get.dart';
import 'controllers/welcoming_page.controller.dart';

class WelcomingPageScreen extends GetView<WelcomingPageController> {
  const WelcomingPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_welcoming.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    blackColor.withOpacity(0.6),
                  ],
                  begin: Alignment.topCenter,
                  stops: [0, 2],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 27.5),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 55,
                  height: 32,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: neutralColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 7,
                      ),
                      elevation: 0,
                    ).copyWith(
                      backgroundColor:
                          WidgetStateProperty.resolveWith<Color?>((states) {
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
                          WidgetStateProperty.resolveWith<Color?>((states) {
                        if (states.contains(WidgetState.pressed)) {
                          return neutralColor
                              .withOpacity(0.5); // Ripple color when pressed
                        }
                        return null; // Default ripple color
                      }),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontFamily: 'Sofia pro',
                        color: primaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Welcome to \n',
                      style: TextStyle(
                        fontFamily: 'Sofia pro',
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                      children: [
                        TextSpan(
                          text: 'FoodHub',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Text(
                      'Your favourite foods delivered\nfast at your door.',
                      style: TextStyle(
                        fontFamily: 'Sofia pro',
                        color: Color(0xff30384F),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 557, left: 40, right: 40),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Divider(
                          color: neutralColor.withOpacity(0.5),
                          thickness: 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17.0),
                      child: Text(
                        'sign in with',
                        style: TextStyle(
                          color: neutralColor,
                          fontFamily: 'Sofia pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Divider(
                          color: neutralColor.withOpacity(0.5),
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
                              WidgetStateProperty.resolveWith<Color?>((states) {
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
                              WidgetStateProperty.resolveWith<Color?>((states) {
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
                              WidgetStateProperty.resolveWith<Color?>((states) {
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
                              WidgetStateProperty.resolveWith<Color?>((states) {
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
                SizedBox(
                  height: 23,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: neutralColor),
                      ),
                    ).copyWith(
                      backgroundColor:
                          WidgetStateProperty.resolveWith<Color?>((states) {
                        if (states.contains(WidgetState.pressed)) {
                          return blackColor
                              .withOpacity(0.3); // Color when pressed
                        } else if (states.contains(WidgetState.hovered)) {
                          return blackColor
                              .withOpacity(0.2); // Color when hovered
                        }
                        return Colors.transparent; // Default color
                      }),
                      overlayColor:
                          WidgetStateProperty.resolveWith<Color?>((states) {
                        if (states.contains(WidgetState.pressed)) {
                          return blackColor
                              .withOpacity(0.3); // Ripple color when pressed
                        }
                        return null; // Default ripple color
                      }),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Start with email or phone',
                      style: TextStyle(
                        color: neutralColor,
                        fontSize: 17,
                        fontFamily: 'Sofia pro',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontFamily: 'Sofia pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: neutralColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontFamily: 'Sofia pro',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: neutralColor,
                              decoration: TextDecoration.underline,
                              decorationColor: neutralColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes.LOGIN_PAGE);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
