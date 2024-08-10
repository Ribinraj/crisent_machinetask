// ignore: file_names
import 'package:crisent_assesment_design/core/colors.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  ImageCarouselState createState() => ImageCarouselState();
}

class ImageCarouselState extends State<ImageCarousel> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  final List<String> _images = [
    'assets/images/Pearl_Precious_White_newActiva.png',
    'assets/images/1723179269285_imgbg.net.png',
    'assets/images/Pearl_Precious_White_newActiva.png',
  ];

  void _nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _previousPage() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: _images.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.contain,
              );
            },
          ),
          Positioned(
            left: 0,
            child: IconButton(
              style: IconButton.styleFrom(padding: EdgeInsets.zero),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: kblackColor,
                size: 30,
              ),
              onPressed: _previousPage,
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              style: IconButton.styleFrom(padding: EdgeInsets.zero),
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: kblackColor,
                size: 30,
              ),
              onPressed: _nextPage,
            ),
          ),
        ],
      ),
    );
  }
}
