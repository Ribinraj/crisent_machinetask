import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:crisent_assesment_design/presentation/screens/cart/widgets/cart_titlewidget.dart';

import 'package:crisent_assesment_design/presentation/screens/cart/widgets/payment_iconbutton.dart';

import 'package:crisent_assesment_design/presentation/screens/cart/widgets/tick_iconbutton.dart';
import 'package:crisent_assesment_design/presentation/screens/cart/widgets/top_container.dart';
import 'package:crisent_assesment_design/presentation/screens/widgets/custom_appbar.dart';
import 'package:crisent_assesment_design/presentation/screens/widgets/dash_devider.dart';
import 'package:flutter/material.dart';

class ScreenCartpage extends StatefulWidget {
  const ScreenCartpage({super.key});

  @override
  State<ScreenCartpage> createState() => _ScreenCartpageState();
}

class _ScreenCartpageState extends State<ScreenCartpage> {
  bool isButton1Clicked = false;
  bool isButton2Clicked = false;
  bool isButtonclicked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const CartWidget(),
            kheight,
            const Topcontainer(),
            kheight20,
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kbackgroundgrey,
                borderRadius: kradius20,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kheight,
                    const Text(
                      'Payment Options',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    kheight,
                    Row(
                      children: [
                        PaymentIconButton(
                            isClicked: isButton1Clicked,
                            onPressed: () {
                              setState(() {
                                isButton1Clicked = !isButton1Clicked;
                              });
                            }),
                        kwidth,
                        const Text(
                          'Full payment',
                          style: TextStyle(fontSize: 15),
                        ),
                        const Spacer(),
                        const Text(
                          '\u20B9 2200.00',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    kheight,
                    Row(
                      children: [
                        PaymentIconButton(
                            isClicked: isButton2Clicked,
                            onPressed: () {
                              setState(() {
                                isButton2Clicked = !isButton2Clicked;
                              });
                            }),
                        kwidth,
                        const Text(
                          'Pay 20% Advance',
                          style: TextStyle(fontSize: 15),
                        ),
                        const Spacer(),
                        const Text(
                          '\u20B9 440.00',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    kheight20,
                    const DashedDivider(
                      height: 1,
                      color: kblackColor,
                      dashWidth: 5,
                      dashSpace: 3,
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            'Rs.1000 refundable security deposit / bike \nto be paid while boarding the Bike / Scooter.'),
                      ),
                    ),
                    const DashedDivider(
                      height: 1,
                      color: kblackColor,
                      dashWidth: 5,
                      dashSpace: 3,
                    ),
                    kheight,
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            TickIconButton(
                                isClicked: isButtonclicked,
                                onPressed: () {
                                  setState(() {
                                    isButtonclicked = !isButtonclicked;
                                  });
                                }),
                            kwidth,
                            const Text(
                                'Early Morning Pickup will be charged at \n\u20B9200 / Bike'),
                          ],
                        ),
                      ),
                    ),
                    const DashedDivider(
                      height: 1,
                      color: kblackColor,
                      dashWidth: 5,
                      dashSpace: 3,
                    ),
                    kheight30,
                    const Text(
                      '\u20B9 2200',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    kheight20,
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kyellowColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: kradius20,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 8.0),
                        ),
                        child: const Text(
                          'Checkout',
                          style: TextStyle(
                              color: kblackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
