import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///Describes how the process of fetching [Dish]es is going
@immutable
abstract class AuthState extends Equatable {}

@immutable
class InitialAuthState extends AuthState {
  @override
  List<Object> get props => [];
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
class AuthOtpSent extends AuthState {
  final bool hasError;
  final String errorMessage;

  AuthOtpSent(
      {this.hasError: false, this.errorMessage: "something went wrong.!"});

  AuthOtpSent copyWith({hasError, errorMessage}) {
    return AuthOtpSent(
        hasError: hasError ?? this.hasError,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  List<Object> get props => [hasError, errorMessage];

  @override
  String toString() => 'OTP sent';
}

@immutable
class LoadingAuthState extends AuthState {
  @override
  List<Object> get props => [toString()];

  @override
  String toString() => 'Loading';
}

@immutable
class OtpVerifiedState extends AuthState {
  OtpVerifiedState();
  @override
  List<Object> get props => [toString()];

  @override
  String toString() => 'OTP Sent';
}
