import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/onboardin_features/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnboardingViewBody()));
  }
}
