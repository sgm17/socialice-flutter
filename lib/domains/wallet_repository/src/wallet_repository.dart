import 'package:socialice/domains/wallet_repository/src/models/wallet_model.dart';

abstract class WalletRepository {
  Future<WalletModel> getWallet();
}
