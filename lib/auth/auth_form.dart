import 'package:chat_app/auth/bloc/auth_bloc.dart';
import 'package:chat_app/auth/bloc/auth_event.dart';
import 'package:chat_app/auth/bloc/auth_state.dart';
import 'package:chat_app/core/components/form_button.dart';
import 'package:chat_app/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class MobileNumberForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final height;
  MobileNumberForm(this.height);

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
                style: formText(context),
                initialValue: 'India (+91)',
                enabled: false,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.all(2.0.h)),
              TextFormField(
                decoration:
                    formDecoration(context, 'Mobile number', 'Mobile number'),
                style: formText(context),
                initialValue: '9176769136',
                validator: validatePhone,
              ),
              Padding(padding: EdgeInsets.all(2.0.h)),
              FormButton(
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
