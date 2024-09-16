import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget BuildContent(){
      return HomePage(
        
      );  
    }
    
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNav(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNav(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNav(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNav(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          BuildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
