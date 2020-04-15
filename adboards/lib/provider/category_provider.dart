
import 'package:flutter/cupertino.dart';

class CategoryProvider with ChangeNotifier {
  List<Map> _categories = [
    {
      'title': 'Automotive',
      'select': false,
      'index': 0
    },
    {
      'title': 'Arts',
      'select': true,
      'index': 1
    },
    {
      'title': 'Baby',
      'select': false,
      'index': 2
    },
    {
      'title': 'Beauty',
      'select': false,
      'index': 3
    },
    {
      'title': 'Books',
      'select': true,
      'index': 4
    },
    {
      'title': 'Automotive',
      'select': false,
      'index': 5
    },
    {
      'title': 'Clothing',
      'select': false,
      'index': 6
    },
    {
      'title': 'Computers',
      'select': false,
      'index': 7
    },
    {
      'title': 'Desks',
      'select': false,
      'index': 8
    },
    {
      'title': 'Everlution',
      'select': false,
      'index': 9
    },
    {
      'title': 'International',
      'select': false,
      'index': 10
    },
    {
      'title': 'Heros',
      'select': false,
      'index': 11
    },
  ];
  List<Map> get categories => _categories;

  selectCategoryByCategoryId(int index) {
    var tempList = _categories;
    for (int i = 0; i < _categories.length; i++) {
      if (i == index) {
        tempList[index]['select'] = !tempList[index]['select'];
      }
    }
    _categories = tempList;
    notifyListeners();
  }
}