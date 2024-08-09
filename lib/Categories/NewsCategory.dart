import 'package:NewsCloud/Classes/ArticlesModel.dart';
import 'package:NewsCloud/Screens/WebViewPage.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key, required this.article});

  final Articlesmodel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewPage(url: article.url),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: article.image ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2l8gy1TnEs_lxrd16fhZfnOPgtW5tLGr_sQ&s",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: const Center(child: CircularProgressIndicator(color: Colors.orange)),
                ),
                errorWidget: (context, url, error) => Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2l8gy1TnEs_lxrd16fhZfnOPgtW5tLGr_sQ&s',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              article.title,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              article.subTitle ?? "",
              maxLines: 2,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
