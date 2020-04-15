import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexesWidget extends StatelessWidget {
  final List<String> list = [
    '#',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(15),
      height: ScreenUtil().setHeight(351),
//      color: Colors.deepPurple,
//      foregroundDecoration: BoxDecoration(
//        gradient: LinearGradient(colors: [Color(0xff0AC4BA),Color(0xff2BDA8E)])
//      ),
      child: ListView.builder(
          itemCount: list.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            Gradient gradient = LinearGradient(colors: [Color(0xff0AC4BA),Color(0xff2BDA8E)],begin: Alignment.topCenter,end: Alignment.bottomCenter);
            Shader shader = gradient.createShader(Rect.fromLTWH(0, 0, ScreenUtil().setWidth(15), ScreenUtil().setHeight(351)));
            return Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 3),
              child: Text(
                list[index],
                style: TextStyle(fontSize: ScreenUtil().setSp(11),foreground: Paint()..shader = shader),
              ),
            );
          }),
    );
  }
}
