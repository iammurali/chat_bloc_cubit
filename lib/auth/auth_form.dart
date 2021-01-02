import 'package:chat_app/auth/bloc/auth_bloc.dart';
import 'package:chat_app/auth/bloc/auth_event.dart';
import 'package:chat_app/auth/bloc/auth_state.dart';
import 'package:chat_app/core/app_theme.dart';
import 'package:chat_app/core/components/gradient_button.dart';
import 'package:chat_app/core/router.dart';
import 'package:chat_app/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:sizer/sizer.dart';

class MobileNumberForm extends StatefulWidget {
  final height;
  MobileNumberForm(this.height);

  @override
  _MobileNumberFormState createState() => _MobileNumberFormState();
}

class _MobileNumberFormState extends State<MobileNumberForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<AuthBloc, AuthState>(
          builder: (BuildContext context, AuthState state) {
        return mobileNumberForm(context);
      }),
    );
  }

  Form mobileNumberForm(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: formDecoration(context, 'Country', 'Country'),
                style: Theme.of(context).textTheme.headline5,
                initialValue: 'India (+91)',
                keyboardType: TextInputType.number,
                // enabled: false,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.all(2.0.h)),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration:
                    formDecoration(context, 'Mobile number', 'Mobile number'),
                style: Theme.of(context).textTheme.headline5,
                initialValue: '9176769136',
                validator: validatePhone,
              ),
              Padding(padding: EdgeInsets.all(2.0.h)),
              GradientButton(
                colors: [Color(0xFFFFCEC2), Color(0xFFFF3100)],
                onPressed: () {
                  print('button pressed');
                  if (_formKey.currentState.validate()) {
                    context.read<AuthBloc>().add(AuthFormSubmit());
                  }
                },
                text: 'Proceed',
              )
            ],
          ),
        ));
  }

  String validatePhone(value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}

class OtpInputForm extends StatefulWidget {
  final height;

  OtpInputForm(this.height);

  @override
  _OtpInputFormState createState() => _OtpInputFormState();
}

class _OtpInputFormState extends State<OtpInputForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is OtpVerifiedState) {
          Navigator.pushNamed(context, Router.home);
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Container(
              child: Form(
                  key: _formKey,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.0.h),
                          child: PinCodeTextField(
                            // autofocus: true,
                            hideCharacter: true,
                            highlight: true,
                            highlightColor: AppTheme.primary,
                            defaultBorderColor: Colors.grey,
                            hasTextBorderColor: AppTheme.primary,
                            maxLength: 6,
                            hasError: false,
                            maskCharacter: "🎇",
                            onTextChanged: (text) {},
                            onDone: (text) {
                              print("DONE ");
                              // print("DONE CONTROLLER ${controller.text}");
                            },
                            pinBoxWidth: 50,
                            pinBoxHeight: 64,
                            hasUnderline: true,
                            wrapAlignment: WrapAlignment.spaceAround,
                            pinBoxDecoration: ProvidedPinBoxDecoration
                                .defaultPinBoxDecoration,
                            pinTextStyle: TextStyle(fontSize: 22.0),
                            pinTextAnimatedSwitcherTransition:
                                ProvidedPinBoxTextAnimation.scalingTransition,
                            //                    pinBoxColor: Colors.green[100],
                            pinTextAnimatedSwitcherDuration:
                                Duration(milliseconds: 300),
                            //                    highlightAnimation: true,
                            highlightAnimationBeginColor: Colors.black,
                            highlightAnimationEndColor: Colors.white12,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(7.0.h)),
                        GradientButton(
                          colors: [Color(0xFFFFCEC2), Color(0xFFFF3100)],
                          onPressed: () {
                            print('button pressed');
                            // if (_formKey.currentState.validate()) {
                            context.read<AuthBloc>().add(VerifyOtp());
                            // }
                          },
                          text: 'Proceed',
                        )
                      ],
                    ),
                  )));
        },
      ),
    );
  }
}
