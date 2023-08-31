import 'package:flutter/material.dart';
import 'package:onbroading/home_screen/home_screen.dart';
import 'package:onbroading/onboarding/onboarding_page.dart';

class Splash extends StatefulWidget {
  final bool showOnboarding;
  const Splash({super.key, required this.showOnboarding});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigate();
  }
  void _navigate() async {
    await Future.delayed(const Duration(seconds: 60)); // Thời gian màn hình splash hiển thị
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => widget.showOnboarding ? const OnboardingPage() : const HomeScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
