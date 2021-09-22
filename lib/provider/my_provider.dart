import 'dart:convert';

import 'package:cocktail_app/model/cocktail_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyProvider extends ChangeNotifier {
  String urlTest =
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita';

  Future<List<CocktailModel>> getData(int page, String query) async {
    try {
      var url = Uri.parse(query);
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final dynamic jsonData = json.decode(response.body);
        final List<dynamic> listMap = jsonData['drinks'];
        return addToList(listMap);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Future.error(e);
    }
  }

  List<CocktailModel> addToList(List<dynamic> addList) {
    List<CocktailModel> newCoctailList = [];
    newCoctailList = addList
        .map<CocktailModel>((json) => CocktailModel.fromJson(json))
        .toList();
    return newCoctailList;
  }
}
