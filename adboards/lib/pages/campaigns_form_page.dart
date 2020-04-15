import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:adboards/widget/top_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignsFormPage extends StatelessWidget {
  final String addAsset = 'resources/img/add.png';
  final String forwardAsset = 'resources/img/arrow_forward.png';

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
        body: ListView(
          children: <Widget>[
            TopTextWidget(
              title: 'Few more things ',
              desc:
                  'Please fill out your company information so that we know more about you. ',
            ),
            _companyNameWidget(),
            _tagLineWidget(),
            _addLogoWidget(),
            _nextButtonWidget(context)
          ],
        ));
  }

  Widget _companyNameWidget() {
    TextEditingController companyController = TextEditingController(text: 'Scientefic');
    return Container(
      padding: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(1, 250, 250, 250), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Color(0xffeeeeef)),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Company Name',
              style: TextStyle(
                  color: Color.fromRGBO(68, 68, 68, 0.6),
                  fontSize: ScreenUtil().setSp(16)),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              controller: companyController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _tagLineWidget() {
    TextEditingController tagLineController = TextEditingController(text: 'Scientefic Books');
    return Container(
      padding: EdgeInsets.only(top: 16),
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Color(0xffeeeeef)),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Company Tagline ( Optional )',
              style: TextStyle(
                  color: Color.fromRGBO(68, 68, 68, 0.6),
                  fontSize: ScreenUtil().setSp(16)),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              controller: tagLineController,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(16)
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _addLogoWidget() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Add your Logo',
            style: TextStyle(
                color: Color.fromRGBO(68, 68, 68, 0.6),
                fontSize: ScreenUtil().setSp(16)
            ),
          ),
          SizedBox(height: 10,),
          _selectImgWidget(),
          SizedBox(height: 10,),
          Text(
            'Accepted format: jpg, png & svg',
            style: TextStyle(
                color: Color.fromRGBO(68, 68, 68, 0.6),
                fontSize: ScreenUtil().setSp(14)
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'Don’t have a logo? ',
            style: TextStyle(
                color: Color(0xff10C8B0),
                fontSize: ScreenUtil().setSp(14)
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectImgWidget() {
    return Container(
      height: ScreenUtil().setHeight(149),
      width: ScreenUtil().setWidth(342),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffeeeeef),
        borderRadius: BorderRadius.circular(6)
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 55,
          width: 55,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 2,color: Color(0xff323643))
          ),
          child: Image.asset(addAsset, width: ScreenUtil().setWidth(24),height: ScreenUtil().setHeight(24),),
        ),
      ),
    );
  }

  Widget _nextButtonWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(1, 250, 250, 250)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: InkWell(
        onTap: () {
          Routes.navigateTo(context, Routes.choose);
        },
        child: MainButtonWidget(icon: forwardAsset, title: 'Next'),
      ),
    );
  }
}
