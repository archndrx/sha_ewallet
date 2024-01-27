import 'package:e_wallet/shared/shared_methods.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/view/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == '123123') {
        Navigator.pop(context, true);
      } else {
        showCustomSnackbar(
            context, 'PIN yang anda masukkan salah. Silakan coba lagi.');
      }
    }
  }

  deletPin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  enabled: false,
                  obscureText: true,
                  cursorColor: greyColor,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: greyColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 86,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                    title: '1',
                    onPressed: () {
                      addPin('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onPressed: () {
                      addPin('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onPressed: () {
                      addPin('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onPressed: () {
                      addPin('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onPressed: () {
                      addPin('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onPressed: () {
                      addPin('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onPressed: () {
                      addPin('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onPressed: () {
                      addPin('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onPressed: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onPressed: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletPin();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
