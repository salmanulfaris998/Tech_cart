import 'package:get/get_connect.dart';
import 'package:intl/intl.dart';

class Tformatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mmm-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'INR', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phonenumber) {
    if (phonenumber.length == 10) {
      return '(${phonenumber.substring(0, 3)}) ${phonenumber.substring(3, 6)} ${phonenumber.substring(6)}';
    } else if (phonenumber.length == 11) {
      '(${phonenumber.substring(0, 4)}) ${phonenumber.substring(4, 7)} ${phonenumber.substring(7)}';
    }
    return phonenumber;
  }

  static String internationalFormatPhoneNumber(String phonenumber) {
    var digitonly = phonenumber.replaceAll(
        RegExp(r'\D'), ''); // Remove non-digit characters
    String countryCode = '+${digitonly.substring(0, 2)}';
    digitonly = digitonly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    // Handle specific country code for India (+91)
    if (countryCode == '+91') {
      int i = 0;
      while (i < digitonly.length) {
        int grouplength = 4; // India uses 4 digits for the first group
        int end = i + grouplength;
        formattedNumber.write(digitonly.substring(i, end));

        if (end < digitonly.length) {
          formattedNumber.write(' ');
        }
        i = end;
      }
    } else {
      // Default handling for other country codes
      int i = 0;
      while (i < digitonly.length) {
        int grouplength = 2; // Default group length is 2 digits
        if (i == 0 && countryCode == '+1') {
          grouplength = 3; // For US country code (+1), first group is 3 digits
        }
        int end = i + grouplength;
        formattedNumber.write(digitonly.substring(i, end));

        if (end < digitonly.length) {
          formattedNumber.write(' ');
        }
        i = end;
      }
    }

    return formattedNumber.toString();
  }
}
