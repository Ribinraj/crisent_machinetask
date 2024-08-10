import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:flutter/material.dart';

class PickupCustomContainer extends StatelessWidget {
  const PickupCustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 105,
      decoration: BoxDecoration(
        color: kwhiteColor,
        border: Border.all(
          color: kyellowColor,
          width: 1.5,
        ),
        borderRadius: kradius10,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    'assets/images/Pearl_Precious_White_newActiva.png',
                    fit: BoxFit.contain,
                  ),
                ),
                kheight,
                const Text(
                  'Activa 4G BS4',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            kwidth,
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pickup',
                  style: TextStyle(color: kgreyColor, fontSize: 12),
                ),
                Text(
                  '23 March 2024 09:00 AM',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Drop off',
                  style: TextStyle(color: kgreyColor, fontSize: 12),
                ),
                Text(
                  '26 March 2024 09:00 PM',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                kheight,
                const Text(
                  '\u20B9 500',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                kheight,
                SizedBox(
                  width: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kyellowColor),
                        child: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {},
                          iconSize: 13,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(
                            minHeight: 20,
                            minWidth: 20,
                          ),
                          splashRadius: 20,
                        ),
                      ),
                      const Text('01'),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kyellowColor),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {},
                          iconSize: 13,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(
                            minHeight: 20,
                            minWidth: 20,
                          ),
                          splashRadius: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
