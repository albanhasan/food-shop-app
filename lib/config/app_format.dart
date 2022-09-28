import 'package:intl/intl.dart';

class AppFormat {
  static String data(String stringData) {
    DateTime dateTime = DateTime.parse(stringData);

    return DateFormat('d MMM yyyy', 'id_ID').format(dateTime);
  }

  static String currency(String number) {
    return NumberFormat.currency(
      decimalDigits: 0,
      locale: 'id_ID',
      symbol: 'Rp ',
    ).format(double.parse(number));
  }
}
