import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:crisent_assesment_design/presentation/screens/search/widgets.dart/custom_container.dart';
import 'package:crisent_assesment_design/presentation/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ScreenSearchPage extends StatelessWidget {
  const ScreenSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: ListView(
        padding: const EdgeInsets.all(15),
          children: const [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select your bike',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                kheight20,
                CustomContainer(
                  buttonColor: kyellowColor,
                  buttonText: 'BOOK NOW',
                ),
                kheight,
                CustomContainer(
                    buttonColor: Color.fromRGBO(254, 107, 24, 1),
                    buttonText: 'SOLD OUT')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
