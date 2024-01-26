import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class DataProviderItem extends StatelessWidget {
  const DataProviderItem({
    super.key,
    required this.imageUrl,
    required this.title,
    this.isSelected = false,
  });

  final String imageUrl;
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          20,
        ),
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Available",
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
