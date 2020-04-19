import 'package:flutter/material.dart';

class AppbarLeadingWidget extends StatelessWidget {
  final String backAsset = 'resources/img/arrow_back_ios.png';
  final String closeAsset = 'resources/img/close.png';

  final bool isWhite;
  final bool isClose;
  AppbarLeadingWidget({this.isWhite = false,this.isClose=false});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
//      color: Colors.deepPurple,
        padding: EdgeInsets.only(top: 15, bottom: 15),
        width: 24,
        height: 24,
        child: Image.asset(
          isClose ? closeAsset : backAsset,
          color: this.isWhite ? Colors.white : Color(0xff323643),
        ),
      ),
    );
  }
}
