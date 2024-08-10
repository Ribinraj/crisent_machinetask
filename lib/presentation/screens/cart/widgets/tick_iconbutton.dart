import 'package:flutter/material.dart';
import 'package:crisent_assesment_design/core/colors.dart';

class TickIconButton extends StatelessWidget {
  final bool isClicked;
  final VoidCallback onPressed;

  const TickIconButton({
    Key? key,
    required this.isClicked,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: kblackColor,
          width: 1,
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: isClicked
            ? const Icon(
                Icons.check,
                size: 18,
                color: kblackColor,
              )
            : const SizedBox.shrink(),
        onPressed: onPressed,
      ),
    );
  }
}
