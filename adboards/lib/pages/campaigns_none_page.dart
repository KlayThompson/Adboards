import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_text_leading_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CampaignsNonePage extends StatelessWidget {

  final String bgImgAsset = 'resources/img/undraw_winter_magic_5xu2.png';
  final String addAsset = 'resources/img/add.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: AppBarTextLeadingWidget(title: 'Campaigns'),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          actions: <Widget>[
            AvatarWidget()
          ],
        ),
        body: ListView(
          children: <Widget>[
            _bodyImgWidget(),
            _centerTextWidget(),
            _createCampaignsButtonWidget(context)
          ],
        )
    );
  }
  
  Widget _bodyImgWidget() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Color.fromARGB(1, 250, 250, 250)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      padding: EdgeInsets.fromLTRB(38, 90, 38, 60),
      child: Image.asset(bgImgAsset),
    );
  }

  Widget _centerTextWidget() {
    return Container(
      padding: EdgeInsets.only(left: 35,right: 35,bottom: 90),
      child: Column(
        children: <Widget>[
          Text(
            'Start by Creating a Campaign',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil().setSp(28),
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'Don’t worry, It’s easy & takes only a few minutes',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(68, 68, 68, 0.6),
              fontSize: ScreenUtil().setSp(15)
            ),
          ),
        ],
      ),
    );
  }

  Widget _createCampaignsButtonWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        Routes.navigateTo(context, Routes.category);
      },
      child: MainButtonWidget(icon: addAsset,title: 'Create a Campaign'),
    );
  }
}
