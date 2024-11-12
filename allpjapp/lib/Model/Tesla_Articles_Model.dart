class TeslaArticleModel
{
  List<dynamic>Articles;
  TeslaArticleModel({required this.Articles});
  factory TeslaArticleModel.fromJson(Map<String,dynamic>json)
  {
    return TeslaArticleModel( Articles: json['articles']);
  }
}