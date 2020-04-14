import 'package:adboards/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpertiseLevelPage extends StatelessWidget {
  final String backAsset = 'resources/img/arrow_back_ios.png';
  final List<Map> levels = [
    {
      'icon': 'resources/img/leaves.png',
      'title': 'Novice',
      'desc':
          'You’re new to marketing, Just getting Started. Suitable for SMEs, Entreprenours, Business Interns, Students and everyone else.'
    },
    {
      'icon': 'resources/img/plant.png',
      'title': 'Expert',
      'desc':
          'You’re marketing expert. You know what you are doing. Suitable for Enterprises, Marketing Professionals & Marketing Agencies.'
    }
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: _appbarLeadingWidget(context),
        ),
        body: ListView(
          children: <Widget>[
            _topHeaderWidget(),
            _cardList(context)
          ],
        )
    );
  }

  //app bar back button
  Widget _appbarLeadingWidget(BuildContext context) {
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
          backAsset,
          color: Color(0xff323643),
        ),
      ),
    );
  }

  Widget _topHeaderWidget() {
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
            'Hey,',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(28),
                fontWeight: FontWeight.bold,
                color: Color(0xff323643)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Welcome to Adwards, It’s gonna be easy to grow your business using our interconnected billboards. Choose your expertise to begin. ',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(16),
                color: Color.fromRGBO(68, 68, 68, 0.6),
                height: 1.5),
          )
        ],
      ),
    );
  }

  Widget _cardList(BuildContext context) {
    List<Widget>cardList = this.levels.map((val) {
      return _levelCardInfo(context,val['icon'], val['title'], val['desc']);
    }).toList();

    return Column(
      children: cardList,
    );
  }

  Widget _levelCardInfo(BuildContext context,String icon, String title, String desc) {
    return InkWell(
      onTap: () {
        Routes.navigateTo(context, Routes.campaignsNone);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15.5, 16, 15.5, 16),
        padding: EdgeInsets.fromLTRB(16, 16, 23, 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              icon,
              width: ScreenUtil().setWidth(50),
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(16), color: Color(0xff333333)
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: ScreenUtil().setWidth(239),
                  child: Text(
                    desc,
//                  maxLines: 2,
//                  overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(15),
                        color: Color.fromRGBO(68, 68, 68, 0.6)
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
