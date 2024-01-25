import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/view/widgets/buttons.dart';
import 'package:e_wallet/view/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

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
        title: const Text(
          'Edit PIN',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const CustomFormField(
                  title: 'Old PIN',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'New PIN',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
