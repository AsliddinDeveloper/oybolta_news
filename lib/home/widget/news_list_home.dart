import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../news_details/news_details.dart';
import '../../news_details/news_details.dart';
import 'popub_menu.dart';

class NewsListHome extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String circleAvatar;
  final String circleUsername;

  final String dateTime;
  final String view;
  final String comment;
  // final dynamic ontap;

  const NewsListHome({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.circleAvatar,
    required this.circleUsername,
    required this.dateTime,
    required this.view,
    required this.comment,
    // required this.ontap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => NewsStroyDetails(),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  title,
                  // // // maxLines: 30,
                  maxLines: 9,
                  // overflow: TextOverflow.clip,
                  // textAlign: TextAlign.left,
                  // // textScaleFactor: MediaQuery.of(context).size.width + 1.40,
                  // textScaleFactor: 1.60,

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: GoogleFonts.gabriela().fontFamily,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    // alignment: Alignment.bottomCenter,
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(
                  circleAvatar,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                circleUsername,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      dateTime,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.green.shade300,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.visibility_outlined,
                          size: 17,
                          color: Colors.black54,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          view,
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily:
                                GoogleFonts.notoSansGeorgian().fontFamily,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(
                          // Icons.sms_outlined,
                          CupertinoIcons.ellipses_bubble,
                          size: 17,
                          color: Colors.black54,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          comment,
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily:
                                GoogleFonts.notoSansGeorgian().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: 8),
                  PopupMenu(context),
                  // IconButton(
                  //   onPressed: () {

                  //   },
                  //   icon: const Icon(
                  //     Icons.more_vert,
                  //     color: Colors.black54,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
