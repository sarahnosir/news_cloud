import 'package:flutter/material.dart';
import 'package:news_cloud/services.dart/news_serv.dart';

void main() {
  runApp(const NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Center(
              child: ElevatedButton(
                  child: Text('tap'),
                  onPressed: () async {
                    NewsApi newsApi = NewsApi();
                    var art = await newsApi.fetchResults();
                    for (var element in art) {
                      print(element);
                    }
                  }))),
    );
  }
}
