import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pa1_flutter/model/article_preview.dart';

class ArticlePreviewCard extends StatefulWidget {
  final ArticlePreview articlePreview;

  const ArticlePreviewCard(this.articlePreview, {Key? key}) : super(key: key);

  @override
  State<ArticlePreviewCard> createState() => _ArticlePreviewCardState();
}

class _ArticlePreviewCardState extends State<ArticlePreviewCard> {
  late Future<List<ArticlePreview>> futurePreviews;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(children: [
          Image.network(widget.articlePreview.imageUrl,
              height: 170,
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child:Text(widget.articlePreview.title))
        ]));
  }
}
