import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  final String logoAsset = 'resources/img/logo.png';
  final String videoAsset = 'resources/img/login_video.png';
  final String accountAsset = 'resources/img/account_circle.png';
  final String forwardAsset = 'resources/img/arrow_forward.png';



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 667);
    return AnnotatedRegion<SystemUiOverlayStyle>(
        child:  Scaffold(
//        appBar: AppBar(
//          title: Text('appbarTitle'),
//        ),
            body: ListView(
              children: <Widget>[
                _topLogoWidget(),
                _centerVideoWidget(),
                _loginButtonWidget(context),
                SizedBox(height: 20,),
                _getStartedButtonWidget(context)
              ],
            )
        ),
        value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
    );
  }

  Widget _topLogoWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        children: <Widget>[
          //logo
          Image.asset(
            this.logoAsset,
            fit: BoxFit.contain,
            width: ScreenUtil().setWidth(61),
            height: ScreenUtil().setHeight(55),
          ),
          SizedBox(height: 10,),
          Text(
              'Adboards',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Text(
              'Grow Your Business',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18
            ),
          ),
        ],
      ),
    );
  }

  Widget _centerVideoWidget() {
    return Container(
//      padding: EdgeInsets.only(top: 10,bottom: 10),
      height: ScreenUtil().setHeight(364),
      child: Image.asset(
        videoAsset
      ),
    );
  }

  Widget _loginButtonWidget(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: MainButtonWidget(icon: accountAsset,title: 'Login'),
    );
  }

  Widget _getStartedButtonWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        Routes.navigateTo(context, Routes.expertiseLevel);
      },
      child: MainButtonWidget(icon: forwardAsset,title: 'Get Started',isWhite: true),
    );
  }
}
