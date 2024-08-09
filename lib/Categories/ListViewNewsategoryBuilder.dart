// ignore_for_file: file_names, non_constant_identifier_names

import 'package:NewsCloud/Categories/ListViewNewsCategory.dart';
import 'package:NewsCloud/Classes/ArticlesModel.dart';
import 'package:NewsCloud/Classes/GeNewsModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class ListViewNewsCategoryBuilder extends StatefulWidget {
  const ListViewNewsCategoryBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<ListViewNewsCategoryBuilder> createState() =>
      _ListViewNewsCategoryBuilderState();
}

class _ListViewNewsCategoryBuilderState
    extends State<ListViewNewsCategoryBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = GetNewsModel(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlesmodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListViewNewsCategory(
              articles: snapshot.data!,
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              ),
            );
          }
        });
  }
}
