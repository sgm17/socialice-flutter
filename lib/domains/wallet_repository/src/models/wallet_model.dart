import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class WalletModel with _$WalletModel {
  const WalletModel._();

  const factory WalletModel({required double balance}) = _WalletModel;
}
