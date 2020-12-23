import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GradientButton extends StatelessWidget {
  final onPressed;
  final text;

  ///color: <Color>[Color(0xFF00b09b),Color(0xFF96c93d)]
  final List<Color> colors;
  GradientButton({Key key, @required this.colors, this.onPressed, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      shape: StadiumBorder(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient: LinearGradient(
            colors: this.colors,
          ),
        ),
        child: Text(
          this.text,
          style: TextStyle(fontSize: 15.0.sp),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 15.0),
      ),
      onPressed: this.onPressed,
    );
  }
}
