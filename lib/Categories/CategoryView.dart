import 'package:NewsCloud/Categories/ListViewNewsategoryBuilder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title:Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              category,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "News",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(slivers: [
          ListViewNewsCategoryBuilder(
            category: category,
          ),
        ]),
      ),
    );
  }
}
