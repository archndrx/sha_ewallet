import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/view/widgets/buttons.dart';
import 'package:e_wallet/view/widgets/data_package_item.dart';
import 'package:e_wallet/view/widgets/forms.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

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
        title: const Text("Paket Data"),
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
            "Phone Number",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Select Package",
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
                DataPackageItem(
                  amount: '10',
                  price: 218000,
                  isSelected: true,
                ),
                DataPackageItem(
                  amount: '25',
                  price: 420000,
                ),
                DataPackageItem(
                  amount: '40',
                  price: 2500000,
                ),
                DataPackageItem(
                  amount: '99',
                  price: 5000000,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/data-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
