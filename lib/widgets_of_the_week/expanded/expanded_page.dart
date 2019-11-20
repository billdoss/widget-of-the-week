import 'package:flutter/material.dart';
import 'package:wotw/utils/custom_widgets.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text("Simple Expanded",
                style: TextStyle(color: Colors.black, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            _buildExpanded(),
            SizedBox(
              height: 10,
            ),
            Text("Expanded with Flex",
                style: TextStyle(color: Colors.black, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            _buildExpandedWithFlex(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  _buildExpanded(){
    return Row(
      children: <Widget>[
        MaterialButton(
          color: Colors.blue,
          child: Text("Normal", style: TextStyle(color: Colors.white),),
          onPressed: (){},
        ),
        Expanded(
          child: MaterialButton(
            color: Colors.orange,
            child: Text("Expanded", style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),
        ),
        MaterialButton(
          color: Colors.blue,
          child: Text("Normal", style: TextStyle(color: Colors.white),),
          onPressed: (){},
        ),
      ],
    );
  }

  _buildExpandedWithFlex(){
    return Row(
      children: <Widget>[
        MaterialButton(
          color: Colors.blue,
          child: Text("Normal", style: TextStyle(color: Colors.white),),
          onPressed: (){},
        ),
        Expanded(
          flex: 3,
          child: MaterialButton(
            color: Colors.orange,
            child: Text("Flex 3", style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),
        ),
        MaterialButton(
          color: Colors.blue,
          child: Text("Normal", style: TextStyle(color: Colors.white),),
          onPressed: (){},
        ),
        Expanded(
          flex: 2,
          child: MaterialButton(
            color: Colors.orange,
            child: Text("Flex 2", style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),
        ),
      ],
    );
  }
}
