import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.format_align_left_rounded),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor:kyellowColor,
              shape: RoundedRectangleBorder(
                borderRadius:kradius20,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            ),
            child: const Row(
              children: [
                Icon(Icons.phone_in_talk_outlined, color:kblackColor),
                SizedBox(width: 5),
                Text(
                  '+91-9845627893',
                  style: TextStyle(
                      color:kblackColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
