import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInput extends StatefulWidget {
  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'JM';
  PhoneNumber number = PhoneNumber(isoCode: 'JM');
  bool autoValidateMode = false;

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
      selectorConfig: SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      selectorTextStyle: TextStyle(color: Colors.black),
      initialValue: number,
      textFieldController: controller,
      formatInput: false,
      keyboardType:
          TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: OutlineInputBorder(),
      inputDecoration: InputDecoration(hintText: 'Phone Number'),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
    );
  }
}
