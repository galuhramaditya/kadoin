import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/modules/home/widget/category_item.dart';

class CategorySectionHome extends StatelessWidget {
  const CategorySectionHome({
    Key? key,
    required this.height,
    required this.categoryItems,
  }) : super(key: key);

  final double height;
  final List categoryItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryItems.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(PaddingSizeApp.m),
          child: CategoryItemHome(
            iconPath: categoryItems[index]['iconPath'],
            title: categoryItems[index]['title'],
          ),
        ),
      ),
    );
  }
}
