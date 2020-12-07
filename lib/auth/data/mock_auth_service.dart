import 'dart:convert';

import 'package:chat_app/core/service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

@immutable
class MockAuthService extends Service {
  static final _authresponse = [];

  @override
  Future<List<dynamic>> post(dynamic input) async => _authresponse;
}
