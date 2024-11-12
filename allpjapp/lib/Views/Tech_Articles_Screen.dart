import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:allpjapp/Provider/Tech_Articles_Provider.dart';
import 'package:allpjapp/Widget/Tech_Articles_Widget.dart';

class TechArticlesScreen extends StatelessWidget {
  const TechArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tech Articles")),
      body: Consumer<TechArticlesProvider>(
        builder: (context, techArticlesProvider, child) {
          var articles = techArticlesProvider.techArticleModel?.Articles;
          if (articles == null) {
            techArticlesProvider.fetchNews();
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return TechArticlesWidget(
                  desc: articles[index]['description'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
