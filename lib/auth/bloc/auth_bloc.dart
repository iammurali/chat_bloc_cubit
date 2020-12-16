import 'package:chat_app/auth/bloc/auth_event.dart';
import 'package:chat_app/auth/bloc/auth_state.dart';
import 'package:chat_app/auth/data/base_auth_service.dart';
import 'package:chat_app/core/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final BaseAuthService _authService;

  AuthBloc({@required authService})
      : _authService = authService,
        super(InitialAuthState());

  @override
  Stream<AuthState> mapEventToState(event) async* {
    if (event is AuthFormSubmit) {
      try {
        yield await _sendOtp();
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }
  }

  Future<AuthState> _sendOtp() async {
    const currentSearch = 'rest';
    dynamic newState = await _authService.sendOtp(currentSearch);
    return AuthOtpSent();
  }
}
