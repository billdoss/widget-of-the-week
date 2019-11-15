import 'package:flutter/material.dart';
import 'package:wotw/utils/custom_widgets.dart';

class ExpandedFlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded with Flex"),
      ),
      body: _buildView(),
    );
  }

  _buildView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          _buildRowButtons(),
          buildButton(text: "Normal"),
          Expanded(
            child: buildButton(text: "Flex 2", textColor: Colors.black, color: Colors.yellow),
            flex: 2,
          ),
          buildButton(text: "Normal"),
          Expanded(
            child: buildButton(text: "Flex 1", textColor: Colors.black, color: Colors.yellow),
            flex: 1,
          ),
        ],
      ),
    );
  }

  _buildRowButtons() {
    return Row(
      children: <Widget>[
        buildButton(text: "Normal"),
        Expanded(
          child: buildButton(text: "Flex 2", textColor: Colors.black, color: Colors.yellow),
          flex: 2,
        ),
        buildButton(text: "Normal"),
        Expanded(
          child: buildButton(text: "Flex 1", textColor: Colors.black, color: Colors.yellow),
          flex: 1,
        ),
      ],
    );
  }
}
