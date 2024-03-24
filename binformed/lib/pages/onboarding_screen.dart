import 'package:binformed/constants.dart';
import 'package:binformed/pages/login_page.dart';
import 'package:binformed/pages/nav_bar.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const RootPage()),
                );
              }, // take to home page
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: const [
              createPage(
                image1: 'assets/images/binformed.png',
                image2: 'assets/images/welcome.png',
              ),
            ],
          ),
          Positioned(
            bottom: 110,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(130, 182, 219, 1), // Set the button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Set the border radius for a rounded rectangle
                ),
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 16), // Set the button padding
              ),
              child: const Text(
                "Start",
                style: TextStyle(
                  fontSize: 18, 
                  color:Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class createPage extends StatelessWidget {
  final String image1;
  final String image2;

  const createPage({
    Key? key,
    required this.image1,
    required this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 0, right: 0, bottom: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image1,
            height: 400,
            width: 400,
          ),
          Image.asset(
            image2,
            height: 150,
            width: 340,
          ),
        ],
      ),
    );
  }
}