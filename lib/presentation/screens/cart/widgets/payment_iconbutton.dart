import 'package:crisent_assesment_design/core/colors.dart';
import 'package:flutter/material.dart';

class PaymentIconButton extends StatelessWidget {
  final bool isClicked;
  final VoidCallback onPressed;

  const PaymentIconButton({
    Key? key,
    required this.isClicked,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: kblackColor,
          width: 1,
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: Icon(
          Icons.circle,
          size: 18,
          color: isClicked ? kyellowColor : kbackgroundgrey,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
