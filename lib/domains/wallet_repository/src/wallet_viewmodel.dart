import 'package:socialice/domains/wallet_repository/src/models/wallet_model.dart';
import 'package:socialice/domains/wallet_repository/src/wallet_repository.dart';

class WalletViewmodel implements WalletRepository {
  @override
  Future<WalletModel> getWallet() {
    return Future.delayed(
        Duration(seconds: 3), () => WalletModel(balance: 50.2));
  }
}
