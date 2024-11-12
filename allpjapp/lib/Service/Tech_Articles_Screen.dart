import 'package:allpjapp/Model/Tech_Articles_Model.dart';
import 'package:dio/dio.dart';

class TechArticlesService
{
static Dio dio = Dio();
static
Future<TechArticleModel> getData() async
{
  try {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=39c5f0038d274b86ac6cbe948b7e1ccf');
    if (response.statusCode == 200)
      return TechArticleModel.fromJson(response.data);
    else {
      throw Exception("error");
    }
  }
  catch(e)
  {
    throw Exception("error s $e");
  }

}
}