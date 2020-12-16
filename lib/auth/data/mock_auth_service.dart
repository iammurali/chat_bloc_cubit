import 'package:chat_app/auth/data/base_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

@immutable
class MockAuthService extends BaseAuthService {
  static final _authresponse = [];

  @override
  Future<List<dynamic>> post(dynamic input) async => _authresponse;

  @override
  Future<List<dynamic>> sendOtp(dynamic input) async => _authresponse;
}
