import 'package:flutter/material.dart';

import '../themes/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.symmetric(vertical: 4),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimaryClr,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                label,
                style: bodyTextstyle2,
                textAlign: TextAlign.center,
              ),
            )));
  }
}
