import 'package:flutter/material.dart';

import '../Model/Tech_Articles_Model.dart';
import '../Service/Tech_Articles_Screen.dart';

class TechArticlesProvider extends ChangeNotifier {
  TechArticleModel? techArticleModel;

  Future<void> fetchNews() async {
    techArticleModel = await TechArticlesService.getData();
    notifyListeners(); // Notify listeners to rebuild UI
  }
}
