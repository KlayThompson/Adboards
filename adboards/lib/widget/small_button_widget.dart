import 'package:flutter/material.dart';

class SmallButtonWidget extends StatelessWidget {
  final String title;
  SmallButtonWidget({@required this.title,});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [Color(0xff0AC4BA),Color(0xff2BDA8E)])
      ),
      child: Center(child: Text(title, style: TextStyle(color: Colors.white,fontSize: 13),),),
    );
  }
}
