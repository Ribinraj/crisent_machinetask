import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  const Imagecontainer({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome Anand Jain',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
        const Text(
          'Find your ride',
          style: TextStyle(
              color: kgreyColor, fontSize: 23, fontWeight: FontWeight.w600),
        ),
        kheight,
        Container(
          width: screenWidth,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: kradius20,
          ),
          child: ClipRRect(
            borderRadius: kradius20,
            child: Image.asset(
              'assets/images/royal-riders-club-^.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        kheight,
        const Text(
          'Our Fleet',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        kheight,
      ],
    );
  }
}
