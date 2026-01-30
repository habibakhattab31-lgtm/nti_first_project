import 'package:flutter/material.dart';
import 'package:nti_first_project/onboarding/widgets/onboarding_image.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingImage(),
    );
  }
}
