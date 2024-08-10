import 'package:crisent_assesment_design/core/colors.dart';
import 'package:crisent_assesment_design/core/constants.dart';
import 'package:crisent_assesment_design/presentation/screens/mainpage/screen_mainpage.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  ScreenSplash({super.key});
  final TextEditingController controller = TextEditingController(text: "+91 ");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kyellowColor, kwhiteColor],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              kheight50,
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/pngwing.com (1).png',
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Self Ride\nBikes',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Book bikes at flexible prices',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  kheight50,
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixText: '+91 ',
                      hintText: 'Mobile Number',
                      border: OutlineInputBorder(
                          borderRadius: kradius10,
                          borderSide: const BorderSide(color: kblackColor)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: kradius10,
                        borderSide: const BorderSide(color: kblackColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: kradius10,
                        borderSide: const BorderSide(color: kblackColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScreenMainPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: kradius10,
                          ),
                          backgroundColor: kyellowColor),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: kblackColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
