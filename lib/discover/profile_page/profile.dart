import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oybolta_news/profile/modul/article_modul.dart';

import '../../profile/widget/edit_profile.dart';
import '../../profile/widget/settings.dart';
import '../../profile/widget/write_stroies.dart';

class DiscoverProfile extends StatelessWidget {
  const DiscoverProfile({
    super.key,
    required this.articles,
  });

  final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    // int index;
    final articles = Article.articles;
    // final article = ModalRoute.of(context)!.settings.arguments as Article;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.white10,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.smoke_fill,
                // CupertinoIcons.profile_circled,
                size: 30,
              ),
            ),
            centerTitle: true,
            title: const Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const SettinsProfile(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.settings_suggest_outlined,
                      size: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          image: DecorationImage(
                            image: NetworkImage(
                              // article.imageUrl,
                              // Article.articles[index].imageUrl
                              // articles[index].imageUrl

                              // Article.articles[index].imageUrl,
                              // Article.articles[index].imageUrl,
                              articles[4].imageUrl,

                              // "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",

                              // "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              // 'Avazov Asliddin',

                              Article.articles[4].fullName,

                              // textScaleFactor: 1.50,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              // '@Boybobouz',

                              Article.articles[4].username,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const EditProfile(),
                        ),
                      );
                    },
                    child: newsHashtag1(
                      'Edit Profile',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SelectableText(
                Article.articles[4].biotext,
                // 'Tech  enthusiast, likes to share stories about technology, and the digital world.',
                textScaleFactor: 1.50,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              // const SizedBox(height: 15),
              // const Divider(),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(
                    CupertinoIcons.link_circle,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      // 'myurls.co/boybobouz',

                      Article.articles[4].myurl,

                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        // '327',

                        Article.articles[4].stories,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Stories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        // '8 672 401 M',
                        Article.articles[4].obunachilar,

                        // article.obunachilar,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Obunachilar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        // '241',
                        // articles[0].biotext,
                        Article.articles[3].biotext,

                        // Article.articles[index].following,

                        // article.following,

                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 5),
              const Divider(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      //   body: ListView.builder(
      //     itemCount: articles.length,
      //     itemBuilder: (context, index) => Padding(
      //       padding: const EdgeInsets.all(14.0),
      //       child: Column(
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 70,
      //                     height: 70,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(70),
      //                       image: DecorationImage(
      //                         image: NetworkImage(
      //                           // article.imageUrl,
      //                           // Article.articles[index].imageUrl
      //                           // articles[index].imageUrl

      //                           // Article.articles[index].imageUrl,
      //                           // Article.articles[index].imageUrl,
      //                           articles[index].imageUrl,

      //                           // "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",

      //                           // "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
      //                         ),
      //                         fit: BoxFit.cover,
      //                       ),
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.symmetric(
      //                       horizontal: 6,
      //                     ),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.end,
      //                       children: [
      //                         Text(
      //                           // 'Avazov Asliddin',

      //                           Article.articles[index].fullName,

      //                           // textScaleFactor: 1.50,
      //                           style: const TextStyle(
      //                             fontWeight: FontWeight.bold,
      //                             fontSize: 18,
      //                           ),
      //                         ),
      //                         const SizedBox(height: 6),
      //                         Text(
      //                           // '@Boybobouz',

      //                           Article.articles[index].username,
      //                           style: TextStyle(
      //                             fontSize: 16,
      //                             color: Colors.grey.shade700,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               InkWell(
      //                 onTap: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (ctx) => const EditProfile(),
      //                     ),
      //                   );
      //                 },
      //                 child: newsHashtag1(
      //                   'Edit Profile',
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(height: 15),
      //           SelectableText(
      //             Article.articles[index].biotext,
      //             // 'Tech  enthusiast, likes to share stories about technology, and the digital world.',
      //             textScaleFactor: 1.50,
      //             style: const TextStyle(
      //               fontWeight: FontWeight.w400,
      //             ),
      //           ),
      //           // const SizedBox(height: 15),
      //           // const Divider(),
      //           const SizedBox(height: 5),
      //           Row(
      //             children: [
      //               const Icon(
      //                 CupertinoIcons.link_circle,
      //                 color: Colors.blue,
      //               ),
      //               TextButton(
      //                 onPressed: () {},
      //                 child: Text(
      //                   // 'myurls.co/boybobouz',

      //                   Article.articles[index].myurl,

      //                   style: const TextStyle(
      //                     color: Colors.blue,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(height: 8),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Column(
      //                 children: [
      //                   Text(
      //                     // '327',

      //                     Article.articles[index].stories,
      //                     style: const TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   const SizedBox(height: 3),
      //                   Text(
      //                     'Stories',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.orange,
      //                       fontFamily: GoogleFonts.montserrat().fontFamily,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Column(
      //                 children: [
      //                   Text(
      //                     // '8 672 401 M',
      //                     Article.articles[index].obunachilar,

      //                     // article.obunachilar,
      //                     style: const TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   const SizedBox(height: 3),
      //                   Text(
      //                     'Obunachilar',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.black54,
      //                       fontFamily: GoogleFonts.montserrat().fontFamily,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Column(
      //                 children: [
      //                   Text(
      //                     // '241',
      //                     Article.articles[index].following,

      //                     // article.following,

      //                     style: const TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   const SizedBox(height: 3),
      //                   Text(
      //                     'Following',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.green,
      //                       fontFamily: GoogleFonts.montserrat().fontFamily,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),

      //           const SizedBox(height: 5),
      //           const Divider(),
      //           const SizedBox(height: 15),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const HikoyalarOynasi(),
            ),
          );
        },
        child: const Icon(CupertinoIcons.pencil_outline),
      ),
    );
  }

  Container newsHashtag1(String top1) {
    return Container(
      padding: const EdgeInsets.only(
        top: 7,
        bottom: 7,
        left: 8,
        right: 8,
      ),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.orange,
              blurRadius: 5,
            )
          ]),
      child: Text(
        top1,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.black,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
      ),
    );
  }
}
