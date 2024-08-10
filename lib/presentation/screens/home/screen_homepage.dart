import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:crisent_assesment_design/presentation/screens/home/widgets/custom_imagecontainer.dart';
import 'package:crisent_assesment_design/presentation/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ScreenHomepage extends StatelessWidget {
  const ScreenHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> itemList = [
      {
        'image': 'assets/images/Pearl_Precious_White_newActiva.png',
        'title': 'Activa 4G BS4',
        'price1': '\u20B9 500',
        'price2': '\u20B9 700',
      },
      {
        'image': 'assets/images/1723179269285_imgbg.net.png',
        'title': 'Dio STD BS4',
        'price1': '\u20B9 500',
        'price2': '\u20B9 700',
      },
      {
        'image': 'assets/images/yamaha-fz-v-2.0-front-three-quarter-8452.webp',
        'title': 'Activa 5G',
        'price1': '\u20B9 700',
        'price2': '\u20B9 1000',
      },
      {
        'image': 'assets/images/Pearl_Precious_White_newActiva.png',
        'title': 'Activa 4G BS4',
        'price1': '\u20B9 500',
        'price2': '\u20B9 700',
      },
      {
        'image': 'assets/images/1723179269285_imgbg.net.png',
        'title': 'Dio STD BS4',
        'price1': '\u20B9 500',
        'price2': '\u20B9 700',
      },
      // Add more items as needed
    ];
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Imagecontainer(screenWidth: screenWidth),
          Column(
            children: List.generate(
              itemList.length,
              (index) {
                final item = itemList[index];
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: screenWidth,
                      height: 130,
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
                              width: 120,
                              height: 130,
                              child: Image.asset(
                                item['image']!,
                                fit: BoxFit.contain,
                              ),
                            ),
                            kwidth,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title']!,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text('Starts from'),
                                Row(
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Monday-Thursday',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Friday-Sunday',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 2,
                                      color: kblackColor,
                                      height: 50,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item['price1']!,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          item['price2']!,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    kheight
                  ],
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
