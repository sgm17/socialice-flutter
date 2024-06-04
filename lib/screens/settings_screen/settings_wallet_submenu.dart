import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';

class SettingsWalletSubmenu extends ConsumerWidget {
  const SettingsWalletSubmenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(appUserProvider).asData!.value;

    return InkWell(
      onTap: () => Navigator.pushNamed(context, "/WalletScreen"),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: RichText(
          text: TextSpan(
              text: "Wallet ",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
              children: [
                TextSpan(
                    text: "CHF ${user.balance.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xFF1B1A1D),
                    ))
              ]),
        ),
      ),
    );
  }
}
