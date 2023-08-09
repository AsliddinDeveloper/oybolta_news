import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeViewAll extends StatelessWidget {
  const homeViewAll({
    super.key,
    required this.title,
    this.ontap,
  });

  final String title;
  final dynamic ontap;
  // final String textIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          // 'Trending',
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: GoogleFonts.gabriela().fontFamily,
          ),
        ),
        InkWell(
          onTap: ontap,
          child: Row(
            children: [
              const Text(
                'Barchasi',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: ontap,
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blue,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
