import 'package:chat_app/auth/bloc/auth_bloc.dart';
import 'package:chat_app/auth/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:chat_app/auth/auth_form.dart';
import 'package:chat_app/core/utils.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 2.5.w, right: 2.5.w),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is InitialAuthState) {
              return MobileNumberInput();
            } else if (state is AuthOtpSent) {
              return Container(
                child: Center(
                  child: Text('test'),
                ),
              );
            } else {
              return MobileNumberInput();
            }
          },
        ),
      )),
    );
  }
}

class MobileNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildHeader(context),
          Container(
            height: 47.0.h,
            width: 100.0.h,
            child: MobileNumberForm(47.0.h),
          ),
          buildFooter(context),
        ],
      ),
    );
  }

// Build Header
  Container buildHeader(context) {
    return Container(
      height: 30.0.h,
      width: 100.0.h,
      child: Padding(
        padding: EdgeInsets.all(3.0.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
                style: headerStyle(context),
              ),
              Text(
                'Please Signin/SignUp to your account',
                style: subHeadingStyle(context),
              )
            ]),
      ),
    );
  }

  //  Build Foo
  Container buildFooter(BuildContext context) {
    return Container(
      height: 20.0.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(children: [
          Text(
            'We will never spam or share your number \n                           with anyone',
            style: subHeadingStyle(context),
          )
        ]),
      ),
    );
  }
}
