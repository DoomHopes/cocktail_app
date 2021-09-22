import 'package:cocktail_app/model/cocktail_model.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  DetailWidget(this.cocktailModel);

  CocktailModel cocktailModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: cocktailModel.strDrink,
        ),
      ),
      body: Text(cocktailModel.strCategory),
    );
  }
}
