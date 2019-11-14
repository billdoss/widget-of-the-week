import 'package:flutter/material.dart';
import 'package:wotw/utils/constants.dart';

class SafeAreaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildView();
    //return _buildSafeView();
    //return _buildSafeViewWithDimensions(top: false);
  }

  _buildView() {
    return Scaffold(
      body: Text(content, style: TextStyle(fontSize: 18),),
    );
  }

  _buildSafeView() {
    return Scaffold(
      body: SafeArea(
        child: Text(content, style: TextStyle(fontSize: 18),),
      ),
    );
  }

  _buildSafeViewWithDimensions(
      {bool top = true,
      bool bottom = true,
      bool left = true,
      bool right = true}) {
    return Scaffold(
      body: SafeArea(
        child: Text(content, style: TextStyle(fontSize: 18),),
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
    );
  }


}
