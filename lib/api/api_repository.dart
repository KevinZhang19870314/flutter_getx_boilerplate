import 'dart:async';

import 'package:flutter_getx_boilerplate/models/models.dart';

import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<LoginResponse?> login(LoginRequest data) async {
    final res = await apiProvider.login('/api/login', data);
    return (res.status.hasError ? Future.error(res.statusText!) : res.body) as FutureOr<LoginResponse?>;
  }
}
