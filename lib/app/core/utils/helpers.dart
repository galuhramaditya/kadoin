import 'package:intl/intl.dart';

class Helper {
  static String numberInt(int number) {
    return NumberFormat.decimalPattern('hi').format(number);
  }

  static String currency(double number) {
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(number);
  }

  static double originalPriceToDiscountPrice(double originalPrice, double discount) {
    return originalPrice - originalPrice * discount / 100;
  }

  static double discoutPriceToOriginalPrice(double finalPrice, double discount) {
    return finalPrice + finalPrice * 100 / discount;
  }
}
