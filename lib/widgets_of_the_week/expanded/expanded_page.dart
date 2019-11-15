import 'package:flutter/material.dart';
import 'package:wotw/utils/custom_widgets.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Expanded"),
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
            child: buildButton(
                text: "Expanded",
                textColor: Colors.black,
                color: Colors.yellow),
          ),
          buildButton(text: "Normal"),
        ],
      ),
    );
  }

  _buildRowButtons() {
    return Row(
      children: <Widget>[
        buildButton(text: "Normal"),
        Expanded(
          child: buildButton(
              text: "Expanded", textColor: Colors.black, color: Colors.yellow),
        ),
        buildButton(text: "Normal"),
      ],
    );
  }
}
