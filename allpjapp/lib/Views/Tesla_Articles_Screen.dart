import 'package:allpjapp/Widget/Tesla_Articles_Widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/Tesla_Articles_Provider.dart';
class TeslaArticlesScreen extends StatelessWidget {
  const TeslaArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tech Articles")),
      body: Consumer<TeslaArticlesProvider>(
        builder: (context, techArticlesProvider, child) {
          var articles = techArticlesProvider.teslaArticleModel?.Articles;
          if (articles == null) {
            techArticlesProvider.FetchNews();
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return TeslaArticlesWidget(
                  Desc: articles[index]['description'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
