import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/ar_icon_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/small_button_widget.dart';
import 'package:adboards/widget/top_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:adboards/widget/searchbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseTemplatePage extends StatelessWidget {
  final String bigImg1Asset = 'resources/img/bigImg1.png';
  final String bigImg2Asset = 'resources/img/bigImg2.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: AppbarLeadingWidget(),
          brightness: Brightness.light,
          actions: <Widget>[AvatarWidget()],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              TopTextWidget(
                title: 'Start creating ',
                desc:
                'This ad templates are specifically tailored for you. Start with one and then customize it. Oh! we placed the company logo, name & tagline for you.  ',
              ),
              SearchBarWidget(),
              _cardWidget(context,'Got Fashion', 'Sutiable for fashion ads ', bigImg1Asset),
              _cardWidget(context,'Promos', 'Suitable for promotion and campaign ', bigImg2Asset)
            ],
          ),
        )
    );
  }

  Widget _cardWidget(BuildContext context,String title, String desc, String imgAsset) {
    return InkWell(
      onTap: () {
        Routes.navigateTo(context, Routes.details);
      },
      child: Container(
        height: ScreenUtil().setHeight(292),
        padding: EdgeInsets.fromLTRB(16, 19, 16, 24),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _bigImgWidget(imgAsset),
            _bottomWidget(title, desc)
          ],
        ),
      ),
    );
  }

  Widget _bigImgWidget(String imgAsset) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
        Image.asset(
        imgAsset,
      ),
          Positioned(
              left: 12,
              bottom: 12,
              child: IconARWidget()
          )
        ],
      ),
    );
  }

  Widget _bottomWidget(String title, String desc) {
    return Container(
//      color: Colors.deepPurple,
      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff444444),
                  fontSize: ScreenUtil().setSp(14),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                desc,
                style: TextStyle(
                  color: Color.fromRGBO(68, 68, 68, 0.6),
                  fontSize: ScreenUtil().setSp(13),
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: SmallButtonWidget(title: 'Use'),
          )
        ],
      ),
    );
  }
}
