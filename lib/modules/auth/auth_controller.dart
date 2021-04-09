import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/api/api.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final ApiRepository repository;
  AuthController({required this.repository});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool termsChecked = false;

  @override
  void onReady() {
    super.onReady();
    print('AuthController onReady >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
  }
}
