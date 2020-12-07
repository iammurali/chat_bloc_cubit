import 'package:chat_app/auth/data/auth_service.dart';
import 'package:chat_app/auth/data/mock_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/service.dart';

@immutable
class RepositoryBundle {
  final Service auth;

  RepositoryBundle({@required bool mock, @required String baseUrl})
      : auth = _buildAuthRepository(mock, baseUrl);

  static Service _buildAuthRepository(bool mock, String baseUrl) {
    if (mock) {
      return MockAuthService();
    } else {
      return AuthService(baseUrl: baseUrl);
    }
  }
}
