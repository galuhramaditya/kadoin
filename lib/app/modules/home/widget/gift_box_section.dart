import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';
import 'package:kadoin/app/global_widgets/section_title.dart';
import 'package:kadoin/app/modules/home/widget/gift_box_item.dart';

class GiftBoxSectionHome extends StatelessWidget {
  const GiftBoxSectionHome({
    Key? key,
    required this.giftBoxItems,
  }) : super(key: key);

  final List giftBoxItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(PaddingSizeApp.m),
          child: SectionTitleApp(
            title: 'Untuk yang Tersayang',
            trailingText: 'Lihat Semua',
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 200,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: giftBoxItems.length + 2,
              itemBuilder: (context, index) {
                if (index == 0 || index == giftBoxItems.length + 1) {
                  return SizedBox(width: PaddingSizeApp.m);
                } else {
                  BorderRadius borderRadius;

                  if (giftBoxItems.length == 1) {
                    borderRadius = BorderRadius.circular(
                      BorderRadiusSizeApp.s,
                    );
                  } else if (index == 1) {
                    borderRadius = BorderRadius.only(
                      topLeft: Radius.circular(BorderRadiusSizeApp.s),
                      bottomLeft: Radius.circular(BorderRadiusSizeApp.s),
                    );
                  } else if (index == giftBoxItems.length) {
                    borderRadius = BorderRadius.only(
                      topRight: Radius.circular(BorderRadiusSizeApp.s),
                      bottomRight: Radius.circular(BorderRadiusSizeApp.s),
                    );
                  } else {
                    borderRadius = BorderRadius.circular(0);
                  }

                  return GiftBoxItemHome(
                    image: giftBoxItems[index - 1]['imageUrl'],
                    title: giftBoxItems[index - 1]['title'],
                    topColor: giftBoxItems[index - 1]['colors'][0],
                    bottomColor: giftBoxItems[index - 1]['colors'][1],
                    borderRadius: borderRadius,
                  );
                }
              }),
        ),
      ],
    );
  }
}
