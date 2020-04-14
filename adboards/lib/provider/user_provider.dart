import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier {
  String _username;
  String _avatar;

  String get username => _username;
  String get avatar => _avatar;

  getUserInfo() {
    _avatar = '';
    _username = 'John';
    notifyListeners();
  }
}