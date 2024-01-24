import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  const HomeTipsItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.url});

  final String imageUrl;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(
          Uri.parse(url),
        )) {
          launchUrl(
            Uri.parse(url),
          );
        }
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imageUrl,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
