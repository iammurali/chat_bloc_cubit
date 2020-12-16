import 'package:flutter/material.dart';

@immutable
abstract class BaseAuthService<Input, Output> {
  Future<Output> post(Input input);

  Future<Output> sendOtp(Input input);
}
