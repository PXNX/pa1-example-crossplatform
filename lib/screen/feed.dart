import 'package:flutter/material.dart';
import 'package:pa1_flutter/data/repository.dart';
import 'package:pa1_flutter/model/article_preview.dart';

class Feed extends StatefulWidget {
  final String title;

  const Feed(this.title, {Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late Future<List<ArticlePreview>> futurePreviews;

  @override
  void initState() {
    super.initState();
    futurePreviews = fetchPreviews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder <List<ArticlePreview>>(
                future: futurePreviews,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        print("RES:: ${snapshot.data!}");
                        return Text(snapshot.data![index].title);
                        // return ArticlePreviewCard(snapshot.data![index]);
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                })
          ],
        ),
      ),
    );
  }
}