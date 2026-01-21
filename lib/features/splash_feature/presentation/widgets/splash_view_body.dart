import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            children: [SvgPicture.asset("assets/images/Ellipse 1005.svg")],
          ),
          Center(child: SvgPicture.asset("assets/images/Logo.svg")),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SvgPicture.asset("assets/images/Ellipse 1006.svg")],
          ),
        ],
      ),
    );
  }
}
