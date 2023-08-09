import 'dart:ui';

import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1621252792374-2b79e3fcf295?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
            ),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            //   Colors.black26,
            //   BlendMode.darken,
            // ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 6,
            sigmaY: 6,
          ),
          child: Center(
            child: Container(
              width: 800,
              height: 660,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1621252792374-2b79e3fcf295?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.black26,
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
