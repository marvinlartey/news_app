import 'package:flutter/material.dart';
import 'package:news_app/tabs/popular_news.dart';
import 'package:news_app/tabs/top_stories.dart';

import '../tabs/local_news.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.menu),
          title: const Text('MM NEWS'),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.more_vert)
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: "Top Stories",
            ),
            Tab(
              text: "Popular",
            ),
            Tab(
              text: "Local",
            )
          ]),
        ),
        body: const TabBarView(
          children: [
            TopNews(),
            PopularNews(),
            LocalNews(),
          ],
        ),
      ),
    ));
  }
}
