import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  final String questionAsset = 'resources/img/question.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(1, 250, 250, 250), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Container(
        height: ScreenUtil().setHeight(36),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(118, 118, 128, 0.12)),
        child: _inputTextFieldWidget(),
      ),
    );
  }

  Widget _inputTextFieldWidget() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    icon: Image.asset(
                      questionAsset,
                      width: ScreenUtil().setWidth(22),
                    ),
                    hintText: 'Search Categories',
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              )),
          SizedBox(
            width: 8,
          ),
          Image.asset(
            questionAsset,
            width: ScreenUtil().setWidth(22),
          )
        ],
      ),
    );
  }
}
