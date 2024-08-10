import 'package:crisent_assesment_design/presentation/screens/bookingpage/screen_booking.dart';
import 'package:crisent_assesment_design/presentation/screens/cart/screen_cart.dart';
import 'package:crisent_assesment_design/presentation/screens/home/screen_homepage.dart';
import 'package:crisent_assesment_design/presentation/screens/mainpage/widgets/bottom_nav.dart';
import 'package:crisent_assesment_design/presentation/screens/search/screen_search.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    const ScreenHomepage(),
    const ScreenSearchPage(),
    ScreenCartpage(),
    const ScreenBookingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
