import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String title;
  TagWidget({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.5),
        border: Border.all(width: 1, color: Color(0xffdfdfdf))
      ),
      child: Center(child: Text(title,style: TextStyle(color: Color(0xff444444),fontSize: 14),),),
    );
  }
}
