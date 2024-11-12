import 'package:flutter/material.dart';
import 'package:todo/Model/ToDoModel.dart';
import 'package:todo/Service/ToDoService.dart';
class ToDoProvider extends ChangeNotifier {
  ToDoModel? toDoModel;
 Future<void> fetchuser() async
  {
    toDoModel = await ToDoService.getData();
    notifyListeners();
  }
}