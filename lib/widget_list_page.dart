import 'package:flutter/material.dart';
import 'package:wotw/widget_item.dart';
import 'package:wotw/widgets_of_the_week/safe_area_page.dart';

class WidgetListPage extends StatelessWidget {

  List<WidgetItem> items = [
    WidgetItem(title: "Safe Area", page: SafeAreaPage())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
