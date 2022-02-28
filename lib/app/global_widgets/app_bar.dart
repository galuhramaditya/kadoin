import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';

class AppBarApp extends StatelessWidget {
  const AppBarApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorApp.primaryColor,
      title: TextField(
        textInputAction: TextInputAction.search,
        cursorColor: ColorApp.primaryColor,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorApp.baseColor, width: 0),
            borderRadius: BorderRadius.all(Radius.circular(BorderRadiusSizeApp.m)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorApp.primaryColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(BorderRadiusSizeApp.m)),
          ),
          filled: true,
          fillColor: ColorApp.baseColor,
          prefixIcon: Icon(Icons.search, color: ColorApp.disabledColor),
          hintText: 'Cari',
          hintStyle: TextStyleApp.s(color: ColorApp.disabledColor),
          isDense: true,
          contentPadding: EdgeInsets.all(0),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.chat,
            color: ColorApp.baseColor,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.notifications,
            color: ColorApp.baseColor,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.local_grocery_store,
            color: ColorApp.baseColor,
          ),
        ),
      ],
    );
  }
}
