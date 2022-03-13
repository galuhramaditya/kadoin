import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/global_widgets/product_item.dart';
import 'package:kadoin/app/global_widgets/section_title.dart';

class GiftForSectionHome extends StatelessWidget {
  const GiftForSectionHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(PaddingSizeApp.m),
          child: SectionTitleApp(
            title: 'Cari Kado Untuk...',
          ),
        ),
        SizedBox(height: 5),
        GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: EdgeInsets.symmetric(horizontal: PaddingSizeApp.m),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ProductItemApp(
              name: 'name',
              imageURL: 'https://picsum.photos/200',
              price: 50000,
            ),
            ProductItemApp(
              name: 'name',
              imageURL: 'https://picsum.photos/200',
              price: 50000,
            ),
            ProductItemApp(
              name: 'name',
              imageURL: 'https://picsum.photos/200',
              discount: 50,
              price: 50000,
            ),
            ProductItemApp(
              name: 'name',
              imageURL: 'https://picsum.photos/200',
              price: 50000,
            ),
          ],
        ),
      ],
    );
  }
}
