import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  List<Widget> buttons = [
    MaterialButton(
      color: Colors.blue,
      child: Text("Button 1"),
      onPressed: () {},
    ),
    MaterialButton(
      child: Text("Button 2"),
      color: Colors.blue,
      onPressed: () {},
    ),
    MaterialButton(
      child: Text("Button 3"),
      color: Colors.blue,
      onPressed: () {},
    ),
    MaterialButton(
      child: Text("Button 4"),
      color: Colors.blue,
      onPressed: () {},
    ),
    MaterialButton(
      child: Text("Button 5"),
      color: Colors.blue,
      onPressed: () {},
    ),
    MaterialButton(
      child: Text("Button 6"),
      color: Colors.blue,
      onPressed: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Vertical Wrap",
                style: TextStyle(color: Colors.black, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: _buildVerticalWrap(),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Horizontal Wrap",
                style: TextStyle(color: Colors.black, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: _buildVerticalWrap(direction: Axis.vertical),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Wrap with Aligment and Spacing",
                style: TextStyle(color: Colors.black, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: _buildVerticalWrapWithSpacingAndAlignment(),
            ),
          ],
        ),
      ),
    );
  }

  _buildVerticalWrap({Axis direction = Axis.horizontal}) {
    return Wrap(
      direction: direction,
      children: buttons,
    );
  }

  _buildVerticalWrapWithSpacingAndAlignment() {
    return Wrap(
      spacing: 10,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: buttons,
    );
  }

}
