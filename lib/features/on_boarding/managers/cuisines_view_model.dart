import 'package:day_29_vazifa/core/client.dart';
import 'package:flutter/material.dart';

class CuisinesViewModel extends ChangeNotifier {
CuisinesViewModel(){
  fetchCuisine();
}
  bool isCategoriesLoading = true;
  List<Map<String, dynamic>> categories = [];

  Future<void> fetchCuisine() async {
    isCategoriesLoading = true;
    notifyListeners();
    var response = await dio.get('/cuisines/list');

    if (response.statusCode != 200) {
      throw Exception('Hatolik: ${response.data}');
    }
    categories = List<Map<String, dynamic>>.from(response.data);
    isCategoriesLoading=false;
    notifyListeners();
  }
}
