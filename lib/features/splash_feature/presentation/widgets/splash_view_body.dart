import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/assets/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late final AnimationController _topController;
  late final AnimationController _logoController;
  late Animation<double> fadeAnimation1;
  late Animation<double> fadeAnimation2;

  @override
  void initState() {
    super.initState();

    _topController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _logoController =
        AnimationController(vsync: this, duration: Duration(seconds: 4))
          ..forward().whenComplete(() {
            _topController.forward();
          });

    fadeAnimation1 = Tween<double>(begin: 0, end: 1).animate(_topController);

    fadeAnimation2 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.bounceInOut),
    );
  }

  @override
  void dispose() {
    _topController.dispose();
    _logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeTransition(
            opacity: fadeAnimation1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [SvgPicture.asset(AppImages.a1)],
            ),
          ),
          FadeTransition(
            opacity: fadeAnimation2,
            child: SvgPicture.asset(AppImages.logo),
          ),
          FadeTransition(
            opacity: fadeAnimation1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [SvgPicture.asset(AppImages.a2)],
            ),
          ),
        ],
      ),
    );
  }
}
