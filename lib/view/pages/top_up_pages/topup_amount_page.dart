import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/view/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({super.key});

  @override
  State<TopUpAmountPage> createState() => _TopUpAmountPageState();
}

class _TopUpAmountPageState extends State<TopUpAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;
      if (text.isNotEmpty) {
        String cleanedText = text.replaceAll(RegExp(r'[^0-9]'), '');
        int parsedValue = int.tryParse(cleanedText) ?? 0;

        amountController.value = amountController.value.copyWith(
          text: NumberFormat.currency(
            locale: 'id',
            decimalDigits: 0,
            symbol: '',
          ).format(parsedValue),
        );
      }
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 58,
        ),
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                enabled: false,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputButton(
                title: '1',
                onPressed: () {
                  addAmount('1');
                },
              ),
              CustomInputButton(
                title: '2',
                onPressed: () {
                  addAmount('2');
                },
              ),
              CustomInputButton(
                title: '3',
                onPressed: () {
                  addAmount('3');
                },
              ),
              CustomInputButton(
                title: '4',
                onPressed: () {
                  addAmount('4');
                },
              ),
              CustomInputButton(
                title: '5',
                onPressed: () {
                  addAmount('5');
                },
              ),
              CustomInputButton(
                title: '6',
                onPressed: () {
                  addAmount('6');
                },
              ),
              CustomInputButton(
                title: '7',
                onPressed: () {
                  addAmount('7');
                },
              ),
              CustomInputButton(
                title: '8',
                onPressed: () {
                  addAmount('8');
                },
              ),
              CustomInputButton(
                title: '9',
                onPressed: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                height: 60,
                width: 60,
              ),
              CustomInputButton(
                title: '0',
                onPressed: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'Checkout Now',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                await launchUrl(
                  Uri.parse('https://demo.midtrans.com/'),
                );
                Navigator.pushNamedAndRemoveUntil(
                    context, '/topup-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextButton(
            title: 'Terms & Conditions',
            onPressed: () {},
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
