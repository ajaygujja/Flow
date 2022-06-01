import 'package:flow/colors.dart';
import 'package:flutter/material.dart';

const TextStyle defaultMonthTextStyle = TextStyle(
  color: AppColors.defaultMonthColor,
  fontSize: Dimen.monthTextSize,
  fontWeight: FontWeight.w500,
);

const TextStyle defaultDateTextStyle = TextStyle(
  color: AppColors.defaultDateColor,
  fontSize: Dimen.dateTextSize,
  fontWeight: FontWeight.w500,
);

const TextStyle defaultDayTextStyle = TextStyle(
  color: AppColors.defaultDayColor,
  fontSize: Dimen.dayTextSize,
  fontWeight: FontWeight.w500,
);

class Dimen {
  Dimen._();

  static const double dateTextSize = 15;
  static const double dayTextSize = 15;
  static const double monthTextSize = 11;
}
