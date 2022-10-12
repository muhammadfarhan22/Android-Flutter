import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Row'),
      ),
      body: Row(
        children: [
          Text('Row 1'),
          Text('Row 1'),
          Text('Row 1'),
          Text('Row 1'),
        ],
      ),
    );
  }
}
