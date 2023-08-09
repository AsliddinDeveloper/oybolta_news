import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final String title;
  final String ontapTitle;
  final Function() ontap;
  const BottomText({
    super.key,
    required this.title,
    required this.ontapTitle,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: ontap,
          child: Text(
            ontapTitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
