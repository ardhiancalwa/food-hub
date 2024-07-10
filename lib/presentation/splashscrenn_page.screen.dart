import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodhub/infrastructure/navigation/routes.dart';
import 'package:foodhub/infrastructure/theme/colors.dart';

import 'package:get/get.dart';

class SplashscrennPageScreen extends StatelessWidget {
  const SplashscrennPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.WELCOMING_PAGE);
    }));
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 93,
                height: 93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: neutralColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: Offset(0, 15), // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SvgPicture.asset('assets/icons/logo.svg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset('assets/icons/name_logo.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
