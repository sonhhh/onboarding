import 'package:flutter/material.dart';
import 'package:onbroading/onboarding/onboarding_page.dart';
import 'package:onbroading/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen/home_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  bool showOnboarding = prefs.getBool('ON_BOARDING') ?? true;

  runApp(MyApp(showOnboarding));
}

class MyApp extends StatelessWidget {
  final bool showOnboarding;

  const MyApp(this.showOnboarding, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter On Boarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(
        showOnboarding: showOnboarding,
      ),
    );
  }
}
