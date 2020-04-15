import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/top_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpertiseLevelPage extends StatelessWidget {
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
          leading: AppbarLeadingWidget(),
          brightness: Brightness.light,
        ),
        body: ListView(
          children: <Widget>[
            TopTextWidget(title: 'Hey,', desc: 'Welcome to Adwards, It’s gonna be easy to grow your business using our interconnected billboards. Choose your expertise to begin. ',),
            _cardList(context)
          ],
        )
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
