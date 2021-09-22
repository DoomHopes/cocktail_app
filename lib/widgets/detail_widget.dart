import 'package:cocktail_app/model/cocktail_model.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  DetailWidget(this.cocktailModel);

  CocktailModel cocktailModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(cocktailModel.strDrink),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Flexible(
                  child:
                      Image(image: NetworkImage(cocktailModel.strDrinkThumb))),
              Flexible(
                child: Text(
                  cocktailModel.strInstructions,
                ),
              ),
            ],
          ),
        ));
  }
}
