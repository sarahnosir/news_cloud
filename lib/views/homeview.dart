import 'package:flutter/material.dart';
import '../view_models/list_of_article_viewmodel.dart';

import 'package:provider/provider.dart';
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("press"),
          onPressed: () async {
            await Provider.of<ArticlesListViewModel>(context, listen: false)
                .fetcharticle();
            print(Provider.of<ArticlesListViewModel>(context, listen: false)
                .articleList);
          },
        ),
      ),
    );
  }