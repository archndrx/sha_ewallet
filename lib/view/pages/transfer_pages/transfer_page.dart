import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/view/widgets/buttons.dart';
import 'package:e_wallet/view/widgets/forms.dart';
import 'package:e_wallet/view/widgets/transfer_recent_user_item.dart';
import 'package:e_wallet/view/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class Transferpage extends StatelessWidget {
  const Transferpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
        ),
        title: const Text("Transfer"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Search",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResultUsers(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Users",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna Jie',
            username: 'yoenna',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend2.png',
            name: 'Jhon Hi',
            username: 'jhi',
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'Masayoshi',
            username: 'form',
          ),
        ],
      ),
    );
  }

  Widget buildResultUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Result ",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const SizedBox(
            width: double.maxFinite,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 17,
              runSpacing: 17,
              children: [
                TransferResultUserItem(
                  imageUrl: 'assets/img_friend1.png',
                  name: 'Yonna Jie',
                  username: 'yoenna',
                  isVerified: true,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/img_friend4.png',
                  name: 'Yonne Ka',
                  username: 'yoenyu',
                  isSelected: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
