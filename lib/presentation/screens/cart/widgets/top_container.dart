import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:crisent_assesment_design/presentation/screens/cart/widgets/pickup_custom_container.dart';
import 'package:flutter/material.dart';

class Topcontainer extends StatelessWidget {
  const Topcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 242,
      decoration: BoxDecoration(
        color: kbackgroundgrey,
        borderRadius: kradius20,
      ),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            PickupCustomContainer(),
            kheight,
            PickupCustomContainer(),
          ],
        ),
      ),
    );
  }
}

