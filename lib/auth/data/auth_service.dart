import 'package:chat_app/core/service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

@immutable
class AuthService extends Service {
  final String _baseUrl;
  AuthService({@required String baseUrl}) : _baseUrl = baseUrl;

  static final _authresponse = [];

  @override
  Future<List<dynamic>> post(dynamic input) async => _authresponse;
}
