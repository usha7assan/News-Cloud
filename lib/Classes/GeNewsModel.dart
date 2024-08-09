// ignore_for_file: unused_catch_clause, unused_local_variable, non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'package:NewsCloud/Classes/ArticlesModel.dart';
import 'package:dio/dio.dart';


class GetNewsModel {
  final dio;
  GetNewsModel(this.dio);

  Future<List<Articlesmodel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_50146aba715dd773eab30b97e982cc6756f45&country=eg&language=ar&category=$category');
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData['results'];
      List<Articlesmodel> articlesModelList = [];
      for (var article in articles) {
        Articlesmodel articlesmodel = Articlesmodel.fromJson(article);
        articlesModelList.add(articlesmodel);
      }
      return articlesModelList;
    } on Exception catch (e) {
      return [];
    }
  }
}
