import 'package:flutter/material.dart';

class TemplateEditorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: Container(child: Center(child: Text('text'),),)
    );
  }
}
