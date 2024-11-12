import 'package:dio/dio.dart';
import 'package:todo/Model/ToDoModel.dart';

class ToDoService
{
  static Dio dio = Dio();
  static Future<ToDoModel> getData() async
  {
    try {
      Response response = await dio.get("https://dummyjson.com/todos/user/13");
      if(response.statusCode == 200)
        return ToDoModel.fromJson(response.data);
      else {throw Exception(response.statusCode) ;}
    }
    catch (e)
    {
      throw Exception(e.toString());
    }
  }
}