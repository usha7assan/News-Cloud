// ignore_for_file: file_names

import 'package:NewsCloud/Categories/CategoryView.dart';
import 'package:NewsCloud/Classes/CategoryModel.dart';
import 'package:flutter/material.dart';


class CardCategory extends StatelessWidget {
  final Categorymodel category;
  const CardCategory({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryView(category:category.categoryName,),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
