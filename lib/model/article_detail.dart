class ArticleDetail {
  final int id;
  final String title;
  final String imageUrl;
  final int publishTimestamp;
  final String text;

  ArticleDetail(this.id, this.title, this.imageUrl, this.publishTimestamp,
      this.text);

  ArticleDetail.fromJson(Map<String, dynamic> json)
      :
        id = json['id'],
        title = json['title'],
        imageUrl = json['imageUrl'],
        publishTimestamp = json['publishTimestamp'],
        text = json['text'];

  Map<String, dynamic> toJson() =>
  {
  'id' : id,
  'title' : title,
  'imageUrl': imageUrl,
  'publishTimestamp' : publishTimestamp,
  'text' : text
};}