import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/wallet_repository/src/models/wallet_model.dart';
import 'package:socialice/providers/wallet_provider/wallet_viewmodel_provider.dart';

class WalletNotifier extends StateNotifier<AsyncValue<WalletModel>> {
  final Ref ref;

  WalletNotifier(
    this.ref,
  ) : super(const AsyncValue<WalletModel>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final wallet = await ref.read(walletViewmodelProvider).getWallet();
      state = AsyncValue.data(wallet);
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
