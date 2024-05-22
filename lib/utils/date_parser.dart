import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatMonthWordDayYear(DateTime dateTime) {
  return DateFormat('MMM d yyyy').format(dateTime);
}

String formatTimeOfDay(TimeOfDay timeOfDay) {
  final hours = timeOfDay.hourOfPeriod == 0
      ? 12
      : timeOfDay.hourOfPeriod; // Convert 0 hour to 12
  final minutes = timeOfDay.minute
      .toString()
      .padLeft(2, '0'); // Pad single digit minutes with a leading zero
  final period = timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';
  return '$hours:$minutes $period';
}

String formatMonthWordDay(DateTime dateTime) {
  return DateFormat('MMM d').format(dateTime);
}

String formatDateWordMonthWordDayYear(DateTime dateTime) {
  // Define the date format
  final DateFormat formatter = DateFormat('EEEE, MMMM dd, yyyy');
  // Format the DateTime object
  final String formattedDate = formatter.format(dateTime);
  return formattedDate;
}

String formatDateHour(DateTime dateTime) {
  // Define the time format
  final DateFormat formatter = DateFormat('hh:mm a');
  // Format the DateTime object
  final String formattedTime = formatter.format(dateTime);
  return formattedTime;
}
