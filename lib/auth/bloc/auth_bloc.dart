import 'package:chat_app/auth/bloc/auth_event.dart';
import 'package:chat_app/auth/bloc/auth_state.dart';
import 'package:chat_app/core/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Service _authService;

  AuthBloc({@required authService})
      : _authService = authService,
        super(InitialAuthState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (state is LoadingAuthState) return;

    yield LoadingAuthState();

    try {
      yield await _loadAuth('currentSearch');
    } catch (e) {
      yield ErrorAuthState(e.toString());
    }
  }

  Future<AuthState> _loadAuth(dynamic currentSearch) async {
    List<dynamic> newState = await _authService.post(currentSearch);
    return ErrorAuthState('newState');
  }
}
