import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/wallet_repository/src/models/wallet_model.dart';
import 'package:socialice/providers/wallet_provider/wallet_notifier.dart';

final walletNotifierProvider =
    StateNotifierProvider<WalletNotifier, AsyncValue<WalletModel>>((ref) {
  return WalletNotifier(ref);
});
