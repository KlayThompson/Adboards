import 'package:adboards/routes/routes.dart';
import 'package:adboards/widget/appbar_leading_widget.dart';
import 'package:adboards/widget/avatar_widget.dart';
import 'package:adboards/widget/indexes_widget.dart';
import 'package:adboards/widget/main_button_widget.dart';
import 'package:adboards/widget/searchbar_widget.dart';
import 'package:adboards/widget/top_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:adboards/provider/category_provider.dart';

class CategoryPage extends StatelessWidget {
  final String checkMarkAsset = 'resources/img/check_mark.png';
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
        body: Consumer<CategoryProvider>(
          builder: (context, provider, child) {
            return Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 90,
                      child: ListView(
                        children: <Widget>[
                          TopTextWidget(
                            title: 'First, ',
                            desc:
                                'We need some information about your business. Start by selecting your business category. You can select more than one category. ',
                          ),
                          SearchBarWidget(),
                          _categoryListWidget(context, provider.categories)
                        ],
                      )),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: _nextButtonWidget(context),
                  ),
                  Align(
                    child: IndexesWidget(),
                    alignment: Alignment(1, 0),
                  )
                ],
              ),
            );
          },
        ));
  }

  Widget _categoryListWidget(BuildContext context, List<Map> categories) {
    List<Widget> list = categories.map((val) {
      bool isSelect = val['select'];
      return InkWell(
        onTap: () {
          print(val['index']);
          Provider.of<CategoryProvider>(context, listen: false)
              .selectCategoryByCategoryId(val['index']);
        },
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              Visibility(
                child: Image.asset(
                  checkMarkAsset,
                  width: ScreenUtil().setWidth(24),
                ),
                visible: isSelect,
              ),
              SizedBox(
                width: isSelect ? 20 : ScreenUtil().setWidth(24) + 20,
              ),
              Text(
                val['title'],
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(16),
                    color: isSelect ? Color(0xff0AC4BA) : Color(0xff444444)),
              ),
            ],
          ),
        ),
      );
    }).toList();

    return Column(
      children: list,
    );
  }

  Widget _nextButtonWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 60),
      child: InkWell(
        onTap: () {
          Routes.navigateTo(context, Routes.form);
        },
        child: MainButtonWidget(icon: forwardAsset, title: 'Next'),
      ),
    );
  }
}
