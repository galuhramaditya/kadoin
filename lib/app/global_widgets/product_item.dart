import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kadoin/app/core/utils/helpers.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';

class ProductItemApp extends StatelessWidget {
  const ProductItemApp({
    Key? key,
    this.width,
    required this.name,
    required this.imageURL,
    this.price = 0,
    this.discount = 0,
    this.isFavorite = false,
  }) : super(key: key);

  final double? width;
  final String name;
  final String imageURL;
  final double price;
  final double discount;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.all(
        Radius.circular(PaddingSizeApp.m),
      ),
      child: Container(
        width: width,
        height: width ?? 150 * 20 / 15,
        constraints: BoxConstraints(
          minWidth: 150,
          maxWidth: 200,
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(PaddingSizeApp.m)),
                    child: Image.network(
                      imageURL,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(PaddingSizeApp.xs),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        discount != 0
                            ? Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/Price Tag.svg',
                                    width: IconSizeApp.m,
                                    height: IconSizeApp.m,
                                  ),
                                  Text(
                                    '30%',
                                    style: TextStyleApp.xs(color: ColorApp.baseColor),
                                  ),
                                ],
                              )
                            : SizedBox(height: IconSizeApp.m),
                        Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? ColorApp.primaryColor : ColorApp.disabledAccentColor,
                          size: IconSizeApp.s,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              child: Padding(
                padding: EdgeInsets.all(PaddingSizeApp.s),
                child: Column(
                  children: [
                    AutoSizeText(
                      name,
                      style: TextStyleApp.m(isBold: true),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: PaddingSizeApp.xs),
                    discount != 0
                        ? AutoSizeText(
                            Helper.currency(price),
                            style: TextStyleApp.s(color: ColorApp.disabledColor, decoration: TextDecoration.lineThrough),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        : SizedBox(),
                    SizedBox(height: PaddingSizeApp.xs),
                    AutoSizeText(
                      Helper.currency(Helper.originalPriceToDiscountPrice(price, discount)),
                      style: TextStyleApp.l(color: ColorApp.primaryColor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
