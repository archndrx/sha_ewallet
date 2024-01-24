import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeSendItem extends StatelessWidget {
  const HomeSendItem({super.key, required this.iconUrl, required this.name});

  final String iconUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(
        right: 17,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(bottom: 13),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  iconUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            '@$name',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
