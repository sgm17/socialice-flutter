import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/wallet_repository/src/wallet_viewmodel.dart';

final walletViewmodelProvider =
    Provider<WalletViewmodel>((ref) => WalletViewmodel());
