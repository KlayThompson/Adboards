import 'package:adboards/widget/ar_icon_widget.dart';
import 'package:adboards/widget/custom_appbar_widget.dart';
import 'package:adboards/widget/tag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:adboards/provider/template_details_provider.dart';

class TemplateDetailsPage extends StatelessWidget {
  final String topImgAsset = 'resources/img/top_img1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<TemplateDetailsProvider>(
          builder: (context, provider, child) {
            return MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: NotificationListener(
                  onNotification: (scroll) {
                    if (scroll is ScrollUpdateNotification && scroll.depth == 0) {
                      _onScroll(context,scroll.metrics.pixels);
                    }
                    return true;
                  },
                  child: Stack(
                    children: <Widget>[
                      _bodyWidget(context),
                      CustomAppbar(provider.alpha)
                    ],
                  ),
                )
            );
          }
      ),
    );
  }

  _onScroll(BuildContext context,double offset) {
    double alpha = offset/100;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha >1) {
      alpha = 1;
    }
    Provider.of<TemplateDetailsProvider>(context, listen: false).changeAppbarAlpha(alpha);
  }

  Widget _bodyWidget(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 642,
          child: Stack(
            children: <Widget>[
              _topImgWidget(),
              Positioned(
                child:  _textAreaWidget(),
                top: 390,
                left: 0,
                right: 0,
              )
            ],
          ),
        ),
//        SizedBox(height: 100,),
        Container(
          height: 1600,
          color: Colors.deepPurpleAccent,
          child: Center(child: Text('text'),),
        )
      ],
    );
  }

  Widget _topImgWidget() {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(topImgAsset),
          Positioned(
              left: 12,
              bottom: 82,
              child: IconARWidget()
          )
        ],
      ),
    );
  }

  Widget _textAreaWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Got Fashion',style: TextStyle(fontSize: ScreenUtil().setSp(20), color: Color(0xff444444)),),
          _tagsWidget(),
          Text(
              'Suitable for fashion. If your onto fashion business and want to show how great your products are this template will help you Just to do that. It also includes a minigame when your customers are waiting in traffic to increase ad engagement.',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(14),
              color: Color.fromRGBO(68, 68, 68, 0.6)
            ),
          ),
          SizedBox(height: 24,),
          //bottom line
          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            color: Color(0xffdfdfdf),
            height: 1,
          ),
          SizedBox(height: 24,),
          //Usages
          Text('Usages',style: TextStyle(fontSize: ScreenUtil().setSp(14),color: Color(0xff444444)),),
        ],
      ),
    );
  }

  Widget _tagsWidget() {
    return Container(
      padding: EdgeInsets.only(top: 12,bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TagWidget(title: 'Fashion'),
          SizedBox(width: 6,),
          TagWidget(title: 'Female'),
          SizedBox(width: 6,),
          TagWidget(title: 'Minigame'),
          SizedBox(width: 6,),
          TagWidget(title: 'Promo'),
        ],
      ),
    );
  }
}
