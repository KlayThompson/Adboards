
import 'package:flutter/cupertino.dart';

class TemplateDetailsProvider with ChangeNotifier {
  double _alpha = 0;
  double get alpha => _alpha;

  changeAppbarAlpha(double newAlpha) {
    _alpha = newAlpha;
    notifyListeners();
  }
}