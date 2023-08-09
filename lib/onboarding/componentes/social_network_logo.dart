import 'package:flutter/material.dart';

class SocialNetworkLogo extends StatelessWidget {
  final String imageUrl;
  const SocialNetworkLogo({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.orange,
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Image.network(
        imageUrl,
        height: 50,
      ),
    );
  }
}
