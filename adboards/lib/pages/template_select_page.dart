import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:adboards/widget/tag_widget.dart';
import 'package:adboards/widget/top_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemplateSelectPage extends StatefulWidget {
  @override
  _TemplateSelectPageState createState() => _TemplateSelectPageState();
}

class _TemplateSelectPageState extends State<TemplateSelectPage> {
  final String bigImg1Asset = 'resources/img/bigImg1.png';
  final String eyeAsset = 'resources/img/eye.png';

  final TextEditingController companyController = TextEditingController(text: 'Fashion Promo XYZ');
  TextEditingController numController = TextEditingController(text: '1');
  TextEditingController timeFrameController = TextEditingController(text: 'Sunday 12 Jan - Monday 13 Jann');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: AppbarLeadingWidget(),
          brightness: Brightness.light,
          actions: <Widget>[AvatarWidget()],
        ),
        body: ListView(
          children: <Widget>[
            _topImageWidget(),
            SizedBox(height: 28,),
            TopTextWidget(title: 'Yey! Ad created',desc: 'Please select how you want to Show your Advert and we will do the rest. Also your advert is saved to your profile',),
            _companyNameWidget(),
            _tagSelectWidget(),
            _numNameWidget(),
            _timeFrameWidget(),
            _bottomWidget(context)
          ],
        )
    );
  }

  Widget _topImageWidget() {
    return Container(
      padding: EdgeInsets.only(left: 15,right: 15,top: 16),
      height: ScreenUtil().setHeight(201),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 10),
                  blurRadius: 15.0, //阴影模糊程度
                  spreadRadius: 1.0 //阴影扩散程度
              )
            ]
        ),
        child: Image.asset(bigImg1Asset,fit: BoxFit.fill,),
      ),
    );
  }

  Widget _companyNameWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1, color: Color(0xffdfdfdf)
              )
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Campagin Name',style: TextStyle(fontSize: 14,color: Color.fromRGBO(68, 68, 68, 0.6)),),
          TextField(
            controller: companyController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          )
        ],
      ),
    );
  }

  Widget _tagSelectWidget() {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 8),
      margin: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1,color: Color(0xffdfdfdf))
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Campagin Name',style: TextStyle(fontSize: 14,color: Color.fromRGBO(68, 68, 68, 0.6)),),
          SizedBox(height: 8,),
          Row(
            children: <Widget>[
              TagWidget(title: 'Badda'),
              SizedBox(width: 7,),
              TagWidget(title: 'Gulshan',),
              SizedBox(width: 7,),
              TagWidget(title: '+3 More',)
            ],
          )
        ],
      ),
    );
  }

  Widget _numNameWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      padding: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1, color: Color(0xffdfdfdf)
              )
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Number of Billboards at a Time',style: TextStyle(fontSize: 14,color: Color.fromRGBO(68, 68, 68, 0.6)),),
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: TextField(
                  controller: numController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),),
              Expanded(
                  flex: 1,
                  child: _changeNumButtonWidget('-')
              ),
              Expanded(
                  flex: 1,
                  child: _changeNumButtonWidget('+')
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _changeNumButtonWidget(String state) {
    return InkWell(
      onTap: () {
        int value = int.parse(numController.text);
        if (state == '-') {
          value--;
          if (value < 1) {
            value = 1;
          }
          numController.text = '$value';
        } else if (state == '+') {
          value++;
          numController.text = '$value';
        }
      },
      child: Container(
        height: 25,
        width: 20,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        margin: EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.5),
            border: Border.all(width: 1, color: Color(0xffdfdfdf))
        ),
        child: Center(child: Text(state,style: TextStyle(color: Color(0xff444444),fontSize: 14),),),
      ),
    );
  }

  Widget _timeFrameWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      padding: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1, color: Color(0xffdfdfdf)
              )
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Timeframe',style: TextStyle(fontSize: 14,color: Color.fromRGBO(68, 68, 68, 0.6)),),
          TextField(
            controller: timeFrameController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('12,500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff444444)),),
                      SizedBox(width: 8,),
                      Image.asset(eyeAsset,width: 24,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('Aprrox. Impression',style: TextStyle(color: Color.fromRGBO(68, 68, 68, 0.6),fontSize: 13),),
                ],
              )
          ),
          Expanded(
              child: InkWell(
                onTap: () {
                  Routes.navigateTo(context, Routes.done);
                },
                child: MainButtonWidget(icon: '',title: '\$3.55',isShort: true,rightZero: true,),
              )
          )
        ],
      ),
    );
  }


}
