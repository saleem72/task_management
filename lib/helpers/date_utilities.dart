//

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension DateUtilities on DateTime {
  bool isTheSameDate(DateTime date) {
    return day == date.day && month == date.month && year == date.year;
  }

  static List<String> getLocalDaysOfWeek(String locale) {
    initializeDateFormatting(locale, null);
    final temp = DateFormat.yMMMMEEEEd(locale).dateSymbols.FIRSTDAYOFWEEK;
    final now = DateTime.now();
    final firstDayOfWeek = now.subtract(Duration(days: now.weekday - temp - 2));
    return List.generate(7, (index) => index)
        .map((value) => DateFormat(DateFormat.WEEKDAY, locale)
            .format(firstDayOfWeek.add(Duration(days: value))))
        .toList();
  }

  static List<DateTime> getDaysOfWeek() {
    final now = DateTime.now();
    final firstDayOfWeek = now.subtract(Duration(days: now.weekday));
    return List.generate(7, (index) => index)
        .map((value) => firstDayOfWeek.add(Duration(days: value)))
        .toList();
  }

  static List<DateTime> getDayHours(DateTime date) {
    final List<DateTime> hours = [];
    for (int i = 0; i < 24; i++) {
      final hour = DateTime(date.year, date.month, date.day, i);
      hours.add(hour);
    }
    return hours;
  }
}
