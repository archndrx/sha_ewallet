import 'package:e_wallet/shared/shared_methods.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class DataPackageItem extends StatelessWidget {
  const DataPackageItem({
    super.key,
    this.isSelected = false,
    required this.amount,
    required this.price,
  });

  final String amount;
  final int price;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 173,
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${amount}GB',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            formatCurrency(price),
            style: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),
          )
        ],
      ),
    );
  }
}
