import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonePage extends StatelessWidget {
  final String closeAsset = 'resources/img/done_big.png';
  final String homeAsset = 'resources/img/home.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: AppbarLeadingWidget(isClose: true,),
          brightness: Brightness.light,
          actions: <Widget>[
            AvatarWidget()
          ],
        ),
        body: Column(
          children: <Widget>[
            _bigImage(),
            _centerText(),
            _goToHomeButtonWidget(context)
          ],
        )
    );
  }

  Widget _bigImage() {
    return Container(
//      color: Colors.deepPurple,
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.only(top: 48),
      child: Image.asset(closeAsset,fit: BoxFit.contain,),
    );
  }

  Widget _centerText() {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 15, 50, 0),
      child: Column(
        children: <Widget>[
          Text('Done! ',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Text(
              'Your ad will be posted in scheduled time. You can check analytics and other information in Dashboard ',
            style: TextStyle(fontSize: 14,color: Color.fromRGBO(68, 68, 68, 0.6)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _goToHomeButtonWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        Routes.navigateTo(context, Routes.home);
      },
      child: Container(
        width: ScreenUtil().setWidth(375),
        padding: EdgeInsets.only(top: 100),
        child: MainButtonWidget(icon: homeAsset,title: 'Go to Home'),
      ),
    );
  }
}
