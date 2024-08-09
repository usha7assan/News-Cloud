// ignore_for_file: file_names

class Articlesmodel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;

  Articlesmodel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.url});

  factory Articlesmodel.fromJson(json) {
    return Articlesmodel(
        image: json['image_url'],
        title: json['title'],
        subTitle: json['description'],
        url: json['link']);
  }
}
