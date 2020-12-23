import 'package:flutter/material.dart';

@immutable
abstract class BaseAuthService<Input, Output> {
  Future<Output> post(Input input);

  /// Requires [countryCode] and [mobileNumber] as Input
  /// Input will be {'phone':'+9199999999999'} should be 10digit
  Future<Output> sendOtp(Input input);

  Future<Output> verifyOtp(Input input);
}
