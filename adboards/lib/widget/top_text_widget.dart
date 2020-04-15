import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopTextWidget extends StatelessWidget {
  final String title;
  final String desc;
  TopTextWidget({this.title,this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Color.fromARGB(1, 250, 250, 250)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      padding: EdgeInsets.fromLTRB(17, 10, 17, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(28),
                fontWeight: FontWeight.bold,
                color: Color(0xff323643)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            desc,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(15),
                color: Color.fromRGBO(68, 68, 68, 0.6),
                height: 1.5),
          )
        ],
      ),
    );
  }
}
