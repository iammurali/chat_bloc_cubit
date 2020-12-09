import 'package:chat_app/auth/auth_view.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: MobileNumberInput()),
    );
  }
}
