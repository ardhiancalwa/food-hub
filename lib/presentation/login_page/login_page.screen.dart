import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/login_page.controller.dart';

class LoginPageScreen extends GetView<LoginPageController> {
  const LoginPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
