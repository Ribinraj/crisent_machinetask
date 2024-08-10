import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  const CustomContainer({
    super.key,
    required this.buttonColor,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(5),
      // width: screenWidth,
      height: 150,
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
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              width: 90,
              height: 130,
              child: Image.asset(
                'assets/images/Pearl_Precious_White_newActiva.png',
                fit: BoxFit.contain,
              ),
            ),
            kwidth20,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Activa 4G BS4',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Unlimited Kilometers',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        '\u20B9 500',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'To',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 2,
                        color: kgreyColor,
                        height: 30,
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            '23 March 2024 09:00 AM',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            '26 March 2024 09:00 PM',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: kradius20,
                        ),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                            color: kblackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
