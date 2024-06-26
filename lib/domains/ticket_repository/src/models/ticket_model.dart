import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class TicketModel with _$TicketModel {
  const TicketModel._();

  const factory TicketModel(
      {required String id,
      required EventModel event,
      required String qrCode,
      required bool scanned}) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  Map<String, dynamic> toJson() => _$TicketModelToJson(this);
}
