import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:crisent_assesment_design/presentation/screens/bookingpage/widgets/Custom_carosal.dart';
import 'package:crisent_assesment_design/presentation/screens/widgets/custom_appbar.dart';
import 'package:crisent_assesment_design/presentation/screens/widgets/dash_devider.dart';
import 'package:flutter/material.dart';

class ScreenBookingPage extends StatelessWidget {
  const ScreenBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Text(
            'Booking Details #2202',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          kheight20,
          const ImageCarousel(),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(5),
            height: 110,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Activa 4G BS4',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '01',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'To',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Container(
                              width: 2,
                              color: kgreyColor,
                              height: 30,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                            ),
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
                            ),
                            const Spacer(),
                            const Text(
                              '\u20B9 500',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: kbackgroundgrey,
              borderRadius: kradius20,
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kheight20,
                  Text(
                    'Payment Summery',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  kheight,
                  Row(
                    children: [
                      Text(
                        'Order Total',
                        style: TextStyle(fontSize: 17),
                      ),
                      Spacer(),
                      Text(
                        '\u20B9 2200.00',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  kheight,
                  Row(
                    children: [
                      Text(
                        'Pay 20% Advance',
                        style: TextStyle(fontSize: 17),
                      ),
                      Spacer(),
                      Text(
                        '\u20B9 104.76',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  kheight20,
                  DashedDivider(
                    height: 1,
                    color: Colors.black,
                    dashWidth: 5,
                    dashSpace: 3,
                  ),
                  kheight20,
                  Row(
                    children: [
                      Text(
                        'Grand Total',
                        style: TextStyle(fontSize: 17),
                      ),
                      Spacer(),
                      Text(
                        '\u20B9 2200',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  kheight20,
                  DashedDivider(
                    height: 1,
                    color: Colors.black,
                    dashWidth: 5,
                    dashSpace: 3,
                  ),
                  kheight
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
