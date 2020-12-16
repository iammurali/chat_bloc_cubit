import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FormButton extends StatelessWidget {
  final onPressed;
  final text;

  const FormButton({Key key, this.onPressed, this.text: "button"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(8.0),
      minWidth: 80.0.w,
      height: 7.0.h,
      onPressed: this.onPressed,
      child: Text(
        this.text,
      ),
    );
  }
}
