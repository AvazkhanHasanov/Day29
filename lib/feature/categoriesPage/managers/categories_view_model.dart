import 'package:day_29_vazifa/core/client.dart';
import 'package:flutter/material.dart';

class CategoriesViewModel extends ChangeNotifier{
  CategoriesViewModel(){
    fatchCategories();
  }
  List<Map<String,dynamic>> categories=[];
  bool isLoading=true;

  Future<void> fatchCategories() async{
    isLoading =true;
    notifyListeners();
    var response = await dio.get('/categories/list');
    if (response.statusCode!=200) {
      Text('Xatolik: ${response.data}');
    }

    isLoading=false;
    notifyListeners();
    categories=List<Map<String, dynamic>>.from(response.data);

  }
}