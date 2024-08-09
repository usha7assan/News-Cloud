// ignore_for_file: file_names
import 'package:NewsCloud/Categories/CardCategory.dart';
import 'package:NewsCloud/Classes/CategoryModel.dart';
import 'package:flutter/material.dart';


class ListviewCategory extends StatelessWidget {
  const ListviewCategory({
    super.key,
  });
  final List<Categorymodel> categories = const [
    Categorymodel(
      image: "assets/images/business.jpg",
      categoryName: "Business",
    ),
    Categorymodel(
        image: "assets/images/entertainment.jpg",
        categoryName: "Entertainment"),
    Categorymodel(
      image: "assets/images/health.png",
      categoryName: "Health",
    ),
    Categorymodel(
      image: "assets/images/science.png",
      categoryName: "Science",
    ),
    Categorymodel(
      image: "assets/images/sports.jpg",
      categoryName: "Sports",
    ),
    Categorymodel(
      image: "assets/images/technology.png",
      categoryName: "Technology",
    ),
    Categorymodel(
      image: "assets/images/general.jpg",
      categoryName: "Other",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CardCategory(category: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
