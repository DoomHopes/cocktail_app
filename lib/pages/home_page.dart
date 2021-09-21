import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CocktailApp'),
        ),
      ),
      body: const Center(
        child: Text('Byte my shiny metal ass!!!'),
      ),
    );
  }
}
