import 'package:crisent_assesment_design/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              currentIndex: newIndex,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: kyellowColor,
              selectedItemColor: kwhiteColor,
              unselectedItemColor: kblackColor,
              selectedIconTheme: const IconThemeData(color: kwhiteColor),
              unselectedIconTheme: const IconThemeData(color: kblackColor),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.search,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.cart,
                    ),
                    label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.clear_all,
                    ),
                    label: 'Booking'),
              ]);
        });
  }
}
