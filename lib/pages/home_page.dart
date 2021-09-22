import 'package:cocktail_app/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String urlTest =
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita';

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, providerData, child) => Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Coctail App')),
        ),
        body: Visibility(
          child: providerData.listViewBuilder(urlTest),
        ),
      ),
    );
  }
}
