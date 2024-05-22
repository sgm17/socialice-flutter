import 'package:freezed_annotation/freezed_annotation.dart';

enum EventType {
  @JsonValue("free")
  free,
  @JsonValue("entrance_payment")
  entrancePayment,
  @JsonValue("payment")
  payment
}
