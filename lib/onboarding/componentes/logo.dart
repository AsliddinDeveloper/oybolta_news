import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String imageUrl;
  const Logo({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
