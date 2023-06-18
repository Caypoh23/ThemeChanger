// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:themechanger/conf/values/date_format_constants.dart';
import 'package:themechanger/conf/values/strings_constants.dart';

class MyDateFormatter {
  //
  static String format(DateTime? date, String newPattern) {
    if (date == null) return '';
    return DateFormat(newPattern).format(date);
  }

  static DateTime? parse(String? date, String newPattern) {
    if (date == null || date == '') return null;
    return DateFormat(newPattern).parse(date);
  }

  ///

  static String fddMMyyyyHHmmss(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyyHHmmss);

  ///
  static String fMinutes(int minutes) {
    String text = '';
    final duration = Duration(minutes: minutes);
    if (duration.inHours > 0) text += '${duration.inHours}${MyStrings.h}';
    if (duration.inMinutes % 60 > 0)
      text += ' ${duration.inMinutes % 60}${MyStrings.m}';
    return text;
  }
}
