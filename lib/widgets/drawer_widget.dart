import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const <Widget>[
          SizedBox(
            height: 100,
          ),
          Text('Bite my shiny metal ass')
        ],
      ),
    );
  }
}
