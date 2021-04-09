import 'package:flutter_getx_boilerplate/models/models.dart';
import 'package:get/get.dart';

import 'api.dart';

class ApiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://reqres.in';
    httpClient.addAuthenticator((request) => authInterceptor(request));
    httpClient.addRequestModifier((request) => requestInterceptor(request));
    httpClient.addResponseModifier(
        (request, response) => responseInterceptor(request, response));
  }

  Future<Response<LoginResponse>> login(String path, LoginRequest data) => post(
        path,
        data.toJson(),
        decoder: (res) => LoginResponse.fromJson(res as Map<String, dynamic>),
      );
}
