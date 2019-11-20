import 'package:flutter/material.dart';
import 'package:wotw/menu_item.dart';
import 'package:wotw/widgets_of_the_week/expanded/expanded_flex_page.dart';
import 'package:wotw/widgets_of_the_week/expanded/expanded_page.dart';

class ExpandedMainPage extends StatelessWidget {
  List<MenuItem> items = [
    MenuItem(title: "Simple Expanded", page: ExpandedPage()),
    MenuItem(title: "Expanded with Flex", page: ExpandedFlexPage()),
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
          title: Text("Expanded"),
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
