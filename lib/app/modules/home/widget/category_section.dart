import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/modules/home/widget/category_item.dart';

class CategorySectionHome extends StatelessWidget {
  CategorySectionHome({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;
  List categories = [
    {'title': 'Boneka', 'iconPath': 'assets/icons/Boneka.svg'},
    {'title': 'Hampers', 'iconPath': 'assets/icons/Hampers.svg'},
    {'title': 'Bunga', 'iconPath': 'assets/icons/Bunga.svg'},
    {'title': 'Perhiasan', 'iconPath': 'assets/icons/Perhiasan.svg'},
    {'title': 'Alat', 'iconPath': 'assets/icons/Alat.svg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(PaddingSizeApp.m),
          child: CategoryItemHome(
            iconPath: categories[index]['iconPath'],
            title: categories[index]['title'],
          ),
        ),
      ),
    );
  }
}
