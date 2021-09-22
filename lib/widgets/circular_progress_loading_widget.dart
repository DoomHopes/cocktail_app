import 'package:flutter/material.dart';

class CircularProgressLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          SizedBox(width: 40.0),
          Text('Loading data ....'),
        ],
      ),
    );
  }
}
