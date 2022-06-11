import 'package:flutter/material.dart';

import '../themes/styles.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  InputField({this.onChanged, required this.hint, required this.controller});

  TextEditingController controller = TextEditingController();
  final String hint;
  void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onSaved: onChanged,
        controller: controller,
        style: bodyTextstyle,
        autofocus: false,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: bodyTextstyle,
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kSecondryClr),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 0)),
        ),
      ),
    );
  }
}
