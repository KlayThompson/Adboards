import 'package:flutter/material.dart';

class IconARWidget extends StatelessWidget {
  final String arIconAsset = 'resources/img/ar_glyph.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69,
      height: 30,
      padding: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            arIconAsset,
            width: 13.7,
          ),
          SizedBox(width: 8,),
          Text('AR', style: TextStyle(fontSize: 14,color: Color(0xff323643)),),
        ],
      ),
    );
  }
}
