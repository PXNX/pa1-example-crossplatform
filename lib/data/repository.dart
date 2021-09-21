import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pa1_flutter/model/article_detail.dart';
import 'package:pa1_flutter/model/article_preview.dart';

const String baseUrl  = "https://pa1-server.herokuapp.com/";

Future<List<ArticlePreview>> fetchPreviews() async {
  final response = await http.get(
      Uri.parse('${baseUrl}previews'));

  if (response.statusCode == 200) {
    Iterable l = json.decode(response.body);
    return List<ArticlePreview>.from(
        l.map((model) => ArticlePreview.fromJson(model)));
  } else {
    throw Exception('Failed to load previews.');
  }
}

Future<ArticleDetail> fetchArticle(int id) async {
  final response = await http.get(Uri.parse('${baseUrl}detail/$id'));
  if (response.statusCode == 200) {
    return ArticleDetail.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load article $id.');
  }
}