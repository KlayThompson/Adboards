import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/top_text_widget.dart';
import 'package:flutter/material.dart';

class CampaignsFormPage extends StatelessWidget {
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
          ],
        )
    );
  }

  Widget _companyNameWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1,color: Color(0xffeeeeef)),
        ),
        gradient: LinearGradient(colors: [Color.fromARGB(1, 250, 250, 250), Colors.white])
      ),
      child: Column(
        children: <Widget>[
          Text('Company Name', style: TextStyle(),),
        ],
      ),
    );
  }
}
