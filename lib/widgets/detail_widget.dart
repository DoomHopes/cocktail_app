import 'package:cocktail_app/model/cocktail_model.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  DetailWidget(this.cocktailModel);

  CocktailModel cocktailModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CocktailApp'),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Flexible(
                child: Image(
                  image: NetworkImage(cocktailModel.strDrinkThumb),
                ),
              ),
              Text(
                cocktailModel.strDrink,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              Flexible(
                child: Text(
                  cocktailModel.strInstructions,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
