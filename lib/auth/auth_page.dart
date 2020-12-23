import 'package:chat_app/auth/bloc/auth_bloc.dart';
import 'package:chat_app/auth/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:chat_app/auth/auth_form.dart';
import 'package:chat_app/core/utils.dart';

/// Handles both [MobileNumberInput] and [OtpVerify] logic
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
              return OtpForm();
            } else {
              return MobileNumberInput();
            }
          },
        ),
      )),
    );
  }
}

class OtpForm extends StatelessWidget {
  const OtpForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        buildHeader(context),
        Container(
          height: 47.0.h,
          width: 100.0.h,
          child: OtpInputForm(47.0.h),
        ),
      ],
    ));
  }

  /// Method builds Header text
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
                'Verify your mobile',
                style: headerStyle(context),
              ),
              Text(
                'Enter the verification code sent to',
                style: subHeadingStyle(context),
              ),
              Padding(padding: EdgeInsets.only(top: 2.0.h)),
              Text(
                '9176769136',
                style: bigInfoTextStyle(context),
              )
            ]),
      ),
    );
  }
}

class MobileNumberInput extends StatefulWidget {
  @override
  _MobileNumberInputState createState() => _MobileNumberInputState();
}

class _MobileNumberInputState extends State<MobileNumberInput> {
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

  /// Build Header
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
