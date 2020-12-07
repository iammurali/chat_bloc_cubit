import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///Describes how the process of fetching [Dish]es is going
@immutable
abstract class AuthState extends Equatable {}

@immutable
class InitialAuthState extends AuthState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() => 'Initial';
}

@immutable
class ErrorAuthState extends AuthState {
  final String errorMessage;

  ErrorAuthState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() => 'Error/Message: ' + errorMessage;
}

@immutable
class LoadingAuthState extends AuthState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() => 'Loading';
}
