import 'package:get/get.dart';
import 'package:kadoin/app/core/values/color.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  List categoryItems = [
    {'title': 'Boneka', 'iconPath': 'assets/icons/Boneka.svg'},
    {'title': 'Hampers', 'iconPath': 'assets/icons/Hampers.svg'},
    {'title': 'Bunga', 'iconPath': 'assets/icons/Bunga.svg'},
    {'title': 'Perhiasan', 'iconPath': 'assets/icons/Perhiasan.svg'},
    {'title': 'Alat', 'iconPath': 'assets/icons/Alat.svg'},
  ];

  List giftBoxItems = [
    {
      'title': 'Kirim Teddy Keperluannya!',
      'imageUrl': 'https://picsum.photos/200',
      'colors': [ColorApp.secondaryAccentColor, ColorApp.secondaryColor],
    },
    {
      'title': 'Beri Hampers Untuk Hari Natal!',
      'imageUrl': 'https://picsum.photos/200',
      'colors': [ColorApp.primaryAccentColor, ColorApp.primaryColor],
    },
    {
      'title': 'Alat Masak Mama Tercinta!',
      'imageUrl': 'https://picsum.photos/200',
      'colors': [ColorApp.tertiaryAccentColor, ColorApp.tertiaryColor],
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
