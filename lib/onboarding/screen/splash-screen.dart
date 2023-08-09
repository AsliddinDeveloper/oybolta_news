import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../intro_pages/page1.dart';
import '../intro_pages/pages2.dart';
import '../intro_pages/pages3.dart';
import '../intro_pages/pages4.dart';
import '../pages/login/logn_pages.dart';
// import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _controller = PageController();
  bool onlastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastPage = (index == 3);
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                ),
                onlastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) => const LogInPages(),
                            ),
                          );
                        },
                        child: const Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(
                              milliseconds: 400,
                            ),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
