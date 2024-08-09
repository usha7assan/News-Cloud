// ignore_for_file: file_names

import 'package:NewsCloud/Categories/NewsCategory.dart';
import 'package:NewsCloud/Classes/ArticlesModel.dart';
import 'package:flutter/material.dart';


class ListViewNewsCategory extends StatelessWidget {
  final List<Articlesmodel> articles;
  const ListViewNewsCategory({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => NewsCategory(
                article: articles[index],
              ),
          childCount: articles.length),
    );
  }
}
