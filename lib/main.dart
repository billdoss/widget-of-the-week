import 'package:flutter/material.dart';
import 'package:wotw/menu_item.dart';
import 'package:wotw/widgets_of_the_week/expanded/expanded_main_page.dart';
import 'package:wotw/widgets_of_the_week/safe_area/safe_area_page.dart';
import 'package:wotw/widgets_of_the_week/wrap/wrap_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<MenuItem> items = [
    MenuItem(title: "Safe Area", page: SafeAreaPage()),
    MenuItem(title: "Expanded", page: ExpandedMainPage()),
    MenuItem(title: "Wrap", page: WrapPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Of The Week',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Of The Week"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "${index + 1} \u2022 ${items[index].title}",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => items[index].page),
                  );
                },
              );
            }),
      ),
    );
  }
}
