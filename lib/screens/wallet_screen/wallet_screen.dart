import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/wallet_provider/wallet_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/skelton.dart';

class WalletScreen extends ConsumerWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletState = ref.watch(walletNotifierProvider);

    return Scaffold(
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: ArrowBack()),
            Expanded(
              child: Text(
                "Wallet",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: SizedBox.shrink(),
            )
          ],
        ),
      ),
      SizedBox(
        height: 32.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          alignment: Alignment.center,
          height: 247,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              border: Border.all(color: AppColors.blackColor, width: 1),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              walletState.when(
                data: (wallet) {
                  String numberString = wallet.balance
                      .toStringAsFixed(2); // Keep two decimal places
                  List<String> parts = numberString.split('.');
                  String integerPart = parts[0];
                  String decimalPart = parts.length > 1 ? parts[1] : '';

                  return RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.bottom,
                          child: Transform.translate(
                            offset: const Offset(2, 5),
                            child: Text(
                              "CHF ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32,
                                  color: AppColors.greyLightColor),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: integerPart,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 64,
                            color: AppColors.blackColor,
                          ),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Transform.translate(
                            offset: const Offset(2, -40),
                            child: Text(
                              decimalPart,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28,
                                  color: AppColors.blackColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                loading: () => Skelton(
                    height: 88,
                    width: 200,
                    borderRadius: 6,
                    isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.blackColor),
                      child: Icon(
                        Icons.account_balance_outlined,
                        color: AppColors.whiteColor,
                        size: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Widthdraw",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 32,
      ),
      InkWell(
        onTap: () => print(''),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transaction history",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () => print(''),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bank details",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              )
            ],
          ),
        ),
      )
    ])));
  }
}
