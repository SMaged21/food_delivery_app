import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/assets/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [SvgPicture.asset(AppImages.a1)],
          ),
          Center(child: SvgPicture.asset(AppImages.logo)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SvgPicture.asset(AppImages.a2)],
          ),
        ],
      ),
    );
  }
}
