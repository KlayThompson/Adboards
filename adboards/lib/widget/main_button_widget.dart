import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButtonWidget extends StatelessWidget {
  final bool isWhite;
  final String icon;
  final String title;
  final bool isShort;
  final bool rightZero;
  final colors = [Color(0xff0AC4BA),Color(0xff2BDA8E)];
  MainButtonWidget({this.isWhite=false,this.icon,this.title,this.isShort=false,this.rightZero=false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, rightZero ? 0 : 20, 0),
      child: Container(
        width: this.isShort ? ScreenUtil().setWidth(335) : ScreenUtil().setWidth(148),
        height: ScreenUtil().setHeight(48),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: this.isWhite ? [Colors.white,Colors.white] : colors),
            borderRadius: BorderRadius.circular(6)
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(title, style: TextStyle(color: this.isWhite ? Color(0xff333333) : Colors.white,fontSize: ScreenUtil().setSp(17)),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                child: Image.asset(
                  this.icon,
                  height: ScreenUtil().setHeight(20),
                  width: ScreenUtil().setWidth(20),
                  color: this.isWhite ? Color(0xff333333) : Colors.white,
                ),
                alignment: Alignment(-1, 0),
              ),)
          ],
        ),
      ),
    );
  }
}
