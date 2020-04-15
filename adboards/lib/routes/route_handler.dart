import 'package:adboards/pages/campaigns_form_page.dart';
import 'package:adboards/pages/campaigns_none_page.dart';
import 'package:adboards/pages/category_page.dart';
import 'package:adboards/pages/choose_template_page.dart';
import 'package:adboards/pages/expertise_level_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:adboards/pages/login_page.dart';


// 根目录
var rootHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LoginPage();
});

// 设置页 - 示例：不传参数
var expertiseLevelHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return ExpertiseLevelPage();
});

//create campaigns
var campaignsNoneHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic>params) {
  return CampaignsNonePage();
});

var categoryHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic>params) {
  return CategoryPage();
});

var formHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic>params) {
  return CampaignsFormPage();
});

var chooseHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic>params) {
  return ChooseTemplatePage();
});

// 网页加载 - 示例：传多个字符串参数
//var webViewHandler =
//Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//  // params内容为  {title: [我是标题哈哈哈], url: [https://www.baidu.com/]}
//  String title = params['title']?.first;
//  String statusBarColor = params['statusBarColor']?.first;
//  String hideAppbar = params['hideAppbar']?.first;
//  String url = params['url']?.first;
//  return WebViewWidget(
//    url: url,
//    title: title,
//    statusBarColor: statusBarColor,
//    hideAppbar: hideAppbar == 'true' ? true : false,
//  );
//});

// 示例：传多个model参数
//var webViewHandler =
//Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//
//  LocalNavList _model1 =
//  LocalNavList.fromJson(convert.jsonDecode(params['localNavList'][0]));
//
//  return WebViewWidget(
//    localNavList: _model1,
//  );
//});