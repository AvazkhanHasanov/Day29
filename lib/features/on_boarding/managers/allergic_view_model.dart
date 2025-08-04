import 'package:day_29_vazifa/core/client.dart';
import 'package:flutter/material.dart';

class AllergicViewModel extends ChangeNotifier {
  AllergicViewModel() {
    fetchAllergic();
  }

  List categories = [];
  bool isLoading = false;

  Future<void> fetchAllergic() async {
    isLoading = true;
    notifyListeners();
    var response = await dio.get('/allergic/list');
    if (response.statusCode != 200) {
      throw Exception('ALLergic olib kelishda hatolik Xatolik');
    }
    categories = List<Map<String, dynamic>>.from(response.data);
    isLoading = false;
    notifyListeners();
  }
}
