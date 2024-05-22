import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, String> {
  const TimestampConverter();

  @override
  DateTime fromJson(String value) {
    return DateTime.parse(value);
  }

  @override
  String toJson(DateTime value) {
    return value.toUtc().toIso8601String();
  }
}
