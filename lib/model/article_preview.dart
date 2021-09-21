class ArticlePreview {
  final int id;
  final String title;
  final String imageUrl;

  ArticlePreview(this.id, this.title, this.imageUrl);

  ArticlePreview.fromJson(Map<String, dynamic> json)
      :
        id = json['id'],
        title = json['title'],
        imageUrl = json['imageUrl'];

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'title': title,
        'imageUrl': imageUrl
      };
}