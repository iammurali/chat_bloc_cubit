import 'package:chat_app/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MobileNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildHeader(context),
          Container(
            color: Colors.blue,
            height: 47.0.h,
            width: 100.0.h,
            child: Column(children: []),
          ),
          Container(
            color: Colors.green,
            height: 25.0.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(children: [
                Text('Welcome Back'),
                Text('Please Signin/SignUp to your account')
              ]),
            ),
          ),
        ],
      ),
    );
  }

// Build Header
  Container buildHeader(context) {
    return Container(
      height: 25.0.h,
      width: 100.0.h,
      child: Padding(
        padding: EdgeInsets.all(3.0.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
                style: headerStyle(context),
              ),
              Text(
                'Please Signin/SignUp to your account',
                style: TextStyle(
                    color: Colors.grey, fontSize: setSubHeadingSize(context)),
              )
            ]),
      ),
    );
  }
}
