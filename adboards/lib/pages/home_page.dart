import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_text_leading_widget.dart';
import 'package:adboards/widget/ar_icon_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:adboards/widget/tag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  final String bigImg1 = 'resources/img/bigImg1.png';
  final String bigImg2 = 'resources/img/bigImg2.png';
  final String home = 'resources/img/home.png';
  final String chart = 'resources/img/show_chart.png';
  final String subject = 'resources/img/subject.png';
  final String add = 'resources/img/add.png';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: AppBarTextLeadingWidget(title: 'Campaigns'),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          actions: <Widget>[AvatarWidget()],
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              top: 0,
              child: ListView(
                children: <Widget>[
                  _cellWidget(
                      bigImg1,
                      'Fashion Promo XYZ',
                      100,
                      'Sunday 12 Jan - Monday 13 Jan, ',
                      '12500 Impressions, \$3.55'),
                  _cellWidget(
                      bigImg2,
                      'Fashion Promo UVW',
                      22,
                      'Thursday 12 Jan - Sunday 13 Jan, ',
                      '43100 Impressions, \$3.55'),
                ],
              ),
            ),
            Positioned(bottom: 0, left: 0, child: _bottomMenuView(context))
          ],
        )
    );
  }

  Widget _cellWidget(
      String icon, String title, int see, String time, String price) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _bigImg(icon),
          _titleAndSeeCount(title, see),
          _timeAndPrice(time, price),
          _tagWidget(),
          _bottomLine()
        ],
      ),
    );
  }

  // 大图
  Widget _bigImg(String icon) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(icon),
          Positioned(
            left: 15,
            bottom: 15,
            child: IconARWidget(),
          )
        ],
      ),
    );
  }

  //标题和查看人数
  Widget _titleAndSeeCount(String title, int see) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      margin: EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(14), color: Color(0xff444444)),
          ),
          Text(
            '$see' + ' Watching',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(14), color: Color(0xff444444)),
          ),
        ],
      ),
    );
  }

  //time&price
  Widget _timeAndPrice(String time, String price) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
//      color: Colors.deepPurple,
      padding: EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(time,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(13),
                  color: Color.fromRGBO(68, 68, 68, 0.6))),
          SizedBox(
            height: 8,
          ),
          Text(price,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(13),
                  color: Color.fromRGBO(68, 68, 68, 0.6))),
        ],
      ),
    );
  }

  //tag
  Widget _tagWidget() {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      padding: EdgeInsets.only(top: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TagWidget(title: 'Interior'),
          SizedBox(
            width: 8,
          ),
          TagWidget(title: 'Gulshan'),
          SizedBox(
            width: 8,
          ),
          TagWidget(title: '+3More'),
        ],
      ),
    );
  }

  //bottom line
  Widget _bottomLine() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 23, 30, 0),
      height: 1,
      color: Color(0xffdfdfdf),
    );
  }

  //menu view
  Widget _bottomMenuView(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 224,
          width: ScreenUtil().setWidth(375),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(255, 255, 255, 0), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Positioned(
          bottom: 106,
          child: _createButton(context),
        ),
        Positioned(
          bottom: 34.5,
            child: _menuButton()
        )
      ],
    );
  }

  //menu button
  Widget _menuButton() {
    return Container(
      height: 55,
      width: 169,
      padding: EdgeInsets.fromLTRB(24, 15, 24, 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(27.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(home,color: Color(0xff2BDA8E),),
          Image.asset(chart),
          Image.asset(subject)
        ],
      ),
    );
  }

  //create a campaign
  Widget _createButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Routes.navigateTo(context, Routes.category);
      },
      child: Container(
        width: ScreenUtil().setWidth(375),
        child: MainButtonWidget(icon: add,title: 'Create a Campaign',),
      ),
    );
  }
}
