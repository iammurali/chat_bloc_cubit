import 'package:flutter/material.dart';

@immutable
abstract class Service<Input, Output> {
  Future<Output> post(Input input);
}
