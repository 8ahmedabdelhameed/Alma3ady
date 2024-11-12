import 'package:allpjapp/Model/Tech_Articles_Model.dart';
import 'package:allpjapp/Model/Tesla_Articles_Model.dart';
import 'package:allpjapp/Service/Tech_Articles_Screen.dart';
import 'package:allpjapp/Service/Tesla_Articles_Service.dart';
import 'package:flutter/material.dart';

class TeslaArticlesProvider with ChangeNotifier
{
  TeslaArticleModel? teslaArticleModel;
  FetchNews()async
  {
    teslaArticleModel = await TeslaArticlesService.getData();
    notifyListeners();
  }
}