import 'package:get/get.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final List pageList = [
    {
      'title': 'Find Best Gift',
      'body': 'Tidak perlu bingung lagi untuk mencari kado terbaik untuk orang spesial. Kadoin dapat membantu kamu mencarinya!',
      'image': 'assets/icons/onboarding-best_gift.svg'
    },
    {
      'title': 'Gift Wrapping',
      'body': 'Kadoin dapat membantu kamu untuk membungkus kado sesuai dengan keinginan kamu.',
      'image': 'assets/icons/onboarding-wrapping.svg',
    },
    {
      'title': 'Gift Letter Card',
      'body': 'Kadoin dapat membantu kamu untuk membungkus kado sesuai dengan keinginan kamu.',
      'image': 'assets/icons/onboarding-letter_card.svg',
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
