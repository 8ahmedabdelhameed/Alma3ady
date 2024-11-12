class TechArticleModel
{
List<dynamic>Articles;
TechArticleModel({required this.Articles});
factory TechArticleModel.fromJson(Map<String,dynamic>json)
{
  return TechArticleModel( Articles: json['articles']);
}
}