import 'package:cocktail_app/model/cocktail_model.dart';
import 'package:cocktail_app/widgets/detail_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  List<CocktailModel> cocktails;

  ListViewWidget(this.cocktails);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cocktails.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(cocktails[index].strDrink),
            subtitle: Text(cocktails[index].strCategory),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailWidget(cocktails[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
