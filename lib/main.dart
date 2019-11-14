import 'package:flutter/material.dart';
import 'package:wotw/widget_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Of The Week',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetListPage(),
    );
  }
}

