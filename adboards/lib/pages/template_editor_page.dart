import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/small_button_widget.dart';
import 'package:flutter/material.dart';

class TemplateEditorPage extends StatelessWidget {
  final String arBigImgAsset = 'resources/img/ar_big.png';
  final String faceIdAsset = 'resources/img/faceid.png';
  final String clipAsset = 'resources/img/clip.png';
  final String addAsset = 'resources/img/add.png';
  final String arIconAsset = 'resources/img/ar_big_icon.png';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: AppbarLeadingWidget(),
          brightness: Brightness.light,
          actions: <Widget>[
            _doneButtonWidget()
          ],
        ),
        body: Column(
          children: <Widget>[
            _bigImageWidget(),
            _bottomToolBarWidget()
          ],
        )
    );
  }

  Widget _doneButtonWidget() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 71,
        margin: EdgeInsets.only(top: 14,bottom: 14,right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [Color(0xff0AC4BA),Color(0xff2BDA8E)])
        ),
        child: Center(child: Text('Done', style: TextStyle(color: Colors.white,fontSize: 13),),),
      ),
    );
  }
  
  Widget _bigImageWidget() {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Image.asset(arBigImgAsset),
    );
  }

  Widget _bottomToolBarWidget() {
    return Container(
      padding: EdgeInsets.only(top: 51),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(addAsset,width: 16,),
          Image.asset(faceIdAsset,width: 19,),
          Image.asset(arIconAsset, width: 48,height: 51,fit: BoxFit.contain,),
          Image.asset(clipAsset,width: 19,),
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: Color(0xff10C8B0),
              borderRadius: BorderRadius.circular(12)
            ),
          )
        ],
      ),
    );
  }
}
