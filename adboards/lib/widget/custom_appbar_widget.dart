import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  final double alpha;
  CustomAppbar(this.alpha);
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: Container(
        color: Color.fromRGBO(255, 255, 255, this.alpha),
        height: 100,
        padding: EdgeInsets.only(top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: this.alpha == 1 ? Colors.black : Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: this.alpha == 1 ? Colors.black : Colors.white,
                    size: 40,
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
