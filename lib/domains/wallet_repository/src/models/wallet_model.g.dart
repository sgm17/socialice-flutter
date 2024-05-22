// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'WalletModel',
      json,
      ($checkedConvert) {
        final val = WalletModel(
          balance: $checkedConvert('balance', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$WalletModelToJson(WalletModel instance) =>
    <String, dynamic>{
      'balance': instance.balance,
    };
