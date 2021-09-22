import 'dart:convert';

import 'package:cocktail_app/model/cocktail_model.dart';
import 'package:cocktail_app/widgets/circular_progress_loading_widget.dart';
import 'package:cocktail_app/widgets/list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyProvider extends ChangeNotifier {
  List<CocktailModel> coctailList = [];

  Widget listViewBuilder(String query) {
    if (coctailList.isEmpty) {
      getListFromAPI(query);
      return const CircularProgressLoading();
    } else {
      return ListViewWidget(coctailList);
    }
  }

  Future<void> getListFromAPI(String query) async {
    coctailList = await getData(query);
    notifyListeners();
  }

  Future<List<CocktailModel>> getData(String query) async {
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
