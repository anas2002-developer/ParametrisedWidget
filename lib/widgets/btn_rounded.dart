import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnRounded extends StatelessWidget{

  final String btnName;
  final Color? bgColor;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? voidCallback;


  BtnRounded({
      required this.btnName, this.bgColor = Colors.black, this.icon, this.textStyle, this.voidCallback});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        height: 80,
        width: 280,
        child: ElevatedButton(
            onPressed: (){ voidCallback!(); },
            child: icon!=null ? Row(children: [icon!,Container(width: 20,),Text(btnName, style: textStyle,)],) : Text(btnName, style: textStyle,),

          style: ElevatedButton.styleFrom(
            primary: bgColor,
            shadowColor: Colors.greenAccent,
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
            )
          ),
        ),
      ),
    );
  }
}