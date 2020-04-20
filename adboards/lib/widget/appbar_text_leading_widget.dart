import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class AppBarTextLeadingWidget extends StatelessWidget {
  final String title;
  AppBarTextLeadingWidget({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.deepPurple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(26),
                    color: Color(0xff323643),
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ],
      ),
    );
  }
}
