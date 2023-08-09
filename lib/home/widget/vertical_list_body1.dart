import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oybolta_news/profile/modul/article_modul.dart';

class VerticalListBody1 extends StatelessWidget {
  const VerticalListBody1({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.circleAvatar,
    required this.cicrleText,
    required this.postTime,
    required this.view,
    required this.comment,
  });

  final String title;
  final String imageUrl;
  final String circleAvatar;
  final String cicrleText;
  final String postTime;
  final String view;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 5,
      // width: 330,
      width: double.infinity,
      height: 400,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Article.articles.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => Container(
          width: 320,
          // height: 260,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                      // Article.articles[index].imageUrl,

                      imageUrl,
                      // 'https://plus.unsplash.com/premium_photo-1669472897414-098c530ffb64?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                // color: Colors.blue,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  margin: const EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              // Article.articles[index].biotext,

                              title,
                              // maxLines: 4,
                              textScaleFactor: 1.20,
                              // "Unmasking the Truth: \n Investigative Report Exposes Widespread Political Corruption",
                              style: TextStyle(
                                // fontSize: 18,
                                fontWeight: FontWeight.bold,
                                // color: Colors.black,
                                fontFamily: GoogleFonts.gabriela().fontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundImage: NetworkImage(
                                  circleAvatar,
                                  // 'https://plus.unsplash.com/premium_photo-1669472897414-098c530ffb64?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                // 'CCN NEWS',
                                cicrleText,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          // const SizedBox(width: 8),
                          Text(
                            // '3 days ago',
                            postTime,
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: GoogleFonts.gabriela().fontFamily,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.visibility_outlined,
                                size: 18,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                // '245.8K',
                                view,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: GoogleFonts.gabriela().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // IconButton(Icons.sms_outlined),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.ellipses_bubble,
                                  color: Colors.black54,
                                  size: 18,
                                ),
                              ),
                              Text(
                                '3.8K',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily:
                                      GoogleFonts.notoSansGeorgian().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share_outlined,
                                  color: Colors.black54,
                                  // size: 15,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.black54,
                                  // size: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
