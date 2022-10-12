import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget column'),
      ),
      body: Column(
        children: [
          Text('Column 1'),
          Text('Column 2'),
          Text('Column 3'),
          Text('Column 4'),
        ],
      ),
    );
  }
}
