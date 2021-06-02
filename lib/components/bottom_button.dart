import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.label, required this.onTap});

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        child: TextButton(
          onPressed: () {
            onTap();
          },
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
          style: TextButton.styleFrom(
            backgroundColor: kBottomContainerColor,
          ),
        ));
  }
}
