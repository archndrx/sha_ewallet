import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServicesItem extends StatelessWidget {
  const HomeServicesItem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  });

  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
