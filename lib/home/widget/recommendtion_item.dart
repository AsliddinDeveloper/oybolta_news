import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oybolta_news/onboarding/screen/home_screen.dart';

import '../../modul/news_item.dart';

// import '../view/nes_ontap_body_text.dart';

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({super.key, required this.newsItem});
  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => HomeScreen(
              // newsItem: newsItem,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(
                    newsItem.imgUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 14.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsItem.category,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.black54,
                        ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    newsItem.title,
                    style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '${newsItem.aurthor} ^ ${newsItem.time}',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
