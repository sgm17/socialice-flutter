import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/wallet_provider/wallet_provider.dart';
import 'package:socialice/widgets/skelton.dart';

class SettingsWalletSubmenu extends ConsumerWidget {
  const SettingsWalletSubmenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletState = ref.watch(walletNotifierProvider);

    return InkWell(
      onTap: () => Navigator.pushNamed(context, "/WalletScreen"),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: walletState.when(
          data: (wallet) => RichText(
            text: TextSpan(
                text: "Wallet ",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF1B1A1D),
                ),
                children: [
                  TextSpan(
                      text: "CHF ${wallet.balance.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xFF1B1A1D),
                      ))
                ]),
          ),
          loading: () =>
              Skelton(height: 21, borderRadius: 6, isProfileImage: false),
          error: (error, stackTrace) => SizedBox.shrink(),
        ),
      ),
    );
  }
}
