import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onbroading/home_screen/home_screen.dart';
import 'package:onbroading/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final List<PageViewModel> page= [
    PageViewModel(
      title: 'New Product',
      body: 'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('assets/image/introl2.webp'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'New Product',
        body: 'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Why to wait!", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('assets/image/introl_1.jpeg'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'New Product',
        body: 'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Let's Start", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('assets/image/travis_scott.jpg'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding:  const EdgeInsets.fromLTRB(12, 80, 12, 12),
      child:IntroductionScreen(
        pages: page,
        dotsDecorator: const DotsDecorator(
          size: Size(15,15),
          color: Colors.blue,
          activeSize: Size.square(20),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: const Text('Done', style: TextStyle(fontSize: 20),),
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(fontSize: 20),),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward, size: 25,),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
      ),
      ),
    );
  }
}
void onDone(context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('ON_BOARDING', false);
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()));
}
